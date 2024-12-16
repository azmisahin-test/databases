#!/bin/bash
# scripts/rollback.sh

# Config dosyasını ve geri dönülecek versiyonu parametre olarak al
CONFIG_FILE="$1"
TARGET_VERSION="$2"

# Check for jq command
if ! command -v jq &> /dev/null; then
    log_message "ERROR" "jq command not found. Please install jq."
    exit 1
fi

# Check config file
if [[ -z "$CONFIG_FILE" || -z "$TARGET_VERSION" ]]; then
    log_message "ERROR" "Error: Config file and target version are required as parameters."
    log_message "ERROR" "Usage: bash rollback.sh /path/to/config.json target_version"
    exit 1
fi

# Config dosyasından bilgileri al
DATABASE=$(jq -r '.database' "$CONFIG_FILE")
MY_CNF_FILE=$(jq -r '.config_file.mysql' "$CONFIG_FILE")
MIGRATION_TABLE=$(jq -r '.migration_table' "$CONFIG_FILE")
ROLLBACK_DIRECTORY=$(jq -r '.rollback.rollback_directory' "$CONFIG_FILE")
ERROR_LOG_FILE=$(jq -r '.error_handling.error_log_file' "$CONFIG_FILE")

# Hata log dosyasını hazırlama
mkdir -p "$(dirname "$ERROR_LOG_FILE")"

# Hataları log dosyasına yönlendirme
exec 2>>"$ERROR_LOG_FILE"

# Function to log messages to both console and log file
log_message() {
    local LEVEL="$1"
    local MESSAGE="$2"
    local DATE_TIME=$(date "+%Y-%m-%d %H:%M:%S")
    echo -e "[$DATE_TIME] [$LEVEL] $MESSAGE" | tee -a "$ERROR_LOG_FILE"
}

# MySQL servisi için bekleme
log_message "INFO" "Waiting for MySQL to be ready..."
until mysql --defaults-extra-file="$MY_CNF_FILE" -e "SELECT 1" &> /dev/null; do
    sleep 2
    log_message "INFO" "MySQL is not ready. Waiting..."
done
log_message "INFO" "MySQL is ready."

# Uygulanan versiyonları sırayla geri alma
log_message "INFO" "Starting rollback to target version: $TARGET_VERSION"
APPLIED_VERSIONS=$(mysql --defaults-extra-file="$MY_CNF_FILE" -D "$DATABASE" -se "SELECT version FROM $MIGRATION_TABLE WHERE status='applied' ORDER BY applied_at DESC;")

for version in $APPLIED_VERSIONS; do
    if [[ "$version" == "$TARGET_VERSION" ]]; then
        log_message "INFO" "Reached target version: $TARGET_VERSION. Stopping rollback."
        break
    fi

    ROLLBACK_FILE="$ROLLBACK_DIRECTORY/$version.sql"
    if [[ -f "$ROLLBACK_FILE" ]]; then
        log_message "INFO" "Rolling back version: $version using $ROLLBACK_FILE"
        if mysql --defaults-extra-file="$MY_CNF_FILE" -D "$DATABASE" < "$ROLLBACK_FILE"; then
            log_message "SUCCESS" "Rollback for version $version completed successfully."
            mysql --defaults-extra-file="$MY_CNF_FILE" -D "$DATABASE" -e "
            UPDATE $MIGRATION_TABLE SET status='rolled_back' WHERE version='$version';"
            
            # Versiyon güncellemesini config dosyasına yansıt
            jq --arg version "$version" \
               '.versioning.current_version = $version | .versioning.applied_versions -= [$version]' \
               "$CONFIG_FILE" > "$CONFIG_FILE.tmp" && mv "$CONFIG_FILE.tmp" "$CONFIG_FILE"
        else
            log_message "ERROR" "Rollback for version $version failed. Please check the logs."
            exit 1
        fi
    else
        log_message "ERROR" "Rollback file for version $version not found. Skipping."
    fi
done

log_message "INFO" "Rollback process completed to version: $TARGET_VERSION"
