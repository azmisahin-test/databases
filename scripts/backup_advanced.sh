#!/bin/bash

# scripts/backup_advanced.sh
# Enhanced MySQL backup with schema, data, full, and clean schema options

CONFIG_FILE="$1"

# Log dosyasının dizini kontrol edilir ve gerekirse oluşturulur
ERROR_LOG_FILE=$(jq -r '.error_handling.error_log_file' "$CONFIG_FILE")
mkdir -p "$(dirname "$ERROR_LOG_FILE")"

# Check for jq command
if ! command -v jq &> /dev/null; then
    echo "[ERROR] $(date +'%Y-%m-%d %H:%M:%S') - jq command not found. Please install jq." | tee -a "$ERROR_LOG_FILE"
    exit 1
fi

# Check config file
if [[ -z "$CONFIG_FILE" ]]; then
    echo "[ERROR] $(date +'%Y-%m-%d %H:%M:%S') - Error: Config file path is required as the first parameter." | tee -a "$ERROR_LOG_FILE"
    exit 1
fi

# Load configuration values
DB_NAME=$(jq -r '.database' "$CONFIG_FILE")
MY_CNF_FILE=$(jq -r '.config_file.mysql' "$CONFIG_FILE")
BACKUP_ENABLED=$(jq -r '.backup.enabled' "$CONFIG_FILE")
BACKUP_DIRECTORY=$(jq -r '.backup.backup_directory' "$CONFIG_FILE")

# Prepare directories
mkdir -p "$BACKUP_DIRECTORY"

# Redirect errors to log file
exec 2>>"$ERROR_LOG_FILE"

# Log başlatma
echo "[INFO] $(date +'%Y-%m-%d %H:%M:%S') - Starting backup script." | tee -a "$ERROR_LOG_FILE"

# Wait for MySQL service
echo "[INFO] $(date +'%Y-%m-%d %H:%M:%S') - Waiting for MySQL to be ready..." | tee -a "$ERROR_LOG_FILE"
until mysql --defaults-extra-file="$MY_CNF_FILE" -e "SELECT 1" &> /dev/null; do
    sleep 2
    echo "[INFO] $(date +'%Y-%m-%d %H:%M:%S') - MySQL is not ready. Waiting..." | tee -a "$ERROR_LOG_FILE"
done
echo "[INFO] $(date +'%Y-%m-%d %H:%M:%S') - MySQL is ready." | tee -a "$ERROR_LOG_FILE"

# Backup functions

backup_schema() {
    local SCHEMA_BACKUP_FILE="$BACKUP_DIRECTORY/$(date +%F_%T)_${DB_NAME}_schema.sql"
    echo "[INFO] $(date +'%Y-%m-%d %H:%M:%S') - Backing up the schema..." | tee -a "$ERROR_LOG_FILE"
    mysqldump --defaults-extra-file="$MY_CNF_FILE" --no-data --no-tablespaces --single-transaction "$DB_NAME" > "$SCHEMA_BACKUP_FILE" \
        && echo "[SUCCESS] $(date +'%Y-%m-%d %H:%M:%S') - Schema backup completed: $SCHEMA_BACKUP_FILE" | tee -a "$ERROR_LOG_FILE" \
        || { echo "[ERROR] $(date +'%Y-%m-%d %H:%M:%S') - Error during schema backup." | tee -a "$ERROR_LOG_FILE"; exit 1; }
}

backup_data() {
    local DATA_BACKUP_FILE="$BACKUP_DIRECTORY/$(date +%F_%T)_${DB_NAME}_data.sql"
    echo "[INFO] $(date +'%Y-%m-%d %H:%M:%S') - Backing up the data..." | tee -a "$ERROR_LOG_FILE"
    mysqldump --defaults-extra-file="$MY_CNF_FILE" --no-create-info --no-tablespaces --single-transaction "$DB_NAME" > "$DATA_BACKUP_FILE" \
        && echo "[SUCCESS] $(date +'%Y-%m-%d %H:%M:%S') - Data backup completed: $DATA_BACKUP_FILE" | tee -a "$ERROR_LOG_FILE" \
        || { echo "[ERROR] $(date +'%Y-%m-%d %H:%M:%S') - Error during data backup." | tee -a "$ERROR_LOG_FILE"; exit 1; }
}

backup_full() {
    local FULL_BACKUP_FILE="$BACKUP_DIRECTORY/$(date +%F_%T)_${DB_NAME}_full.sql"
    echo "[INFO] $(date +'%Y-%m-%d %H:%M:%S') - Backing up the full database (schema + data)..." | tee -a "$ERROR_LOG_FILE"
    mysqldump --defaults-extra-file="$MY_CNF_FILE" --no-tablespaces --single-transaction "$DB_NAME" > "$FULL_BACKUP_FILE" \
        && echo "[SUCCESS] $(date +'%Y-%m-%d %H:%M:%S') - Full backup completed: $FULL_BACKUP_FILE" | tee -a "$ERROR_LOG_FILE" \
        || { echo "[ERROR] $(date +'%Y-%m-%d %H:%M:%S') - Error during full backup." | tee -a "$ERROR_LOG_FILE"; exit 1; }
}

backup_clean_schema() {
    local CLEAN_SCHEMA_BACKUP_FILE="$BACKUP_DIRECTORY/$(date +%F_%T)_${DB_NAME}_clean_schema.sql"
    echo "[INFO] $(date +'%Y-%m-%d %H:%M:%S') - Backing up the clean schema..." | tee -a "$ERROR_LOG_FILE"
    mysqldump --defaults-extra-file="$MY_CNF_FILE" --no-data --skip-comments --compact "$DB_NAME" > "$CLEAN_SCHEMA_BACKUP_FILE" \
        && echo "[SUCCESS] $(date +'%Y-%m-%d %H:%M:%S') - Clean schema backup completed: $CLEAN_SCHEMA_BACKUP_FILE" | tee -a "$ERROR_LOG_FILE" \
        || { echo "[ERROR] $(date +'%Y-%m-%d %H:%M:%S') - Error during clean schema backup." | tee -a "$ERROR_LOG_FILE"; exit 1; }
}

# Start backup if enabled
if [[ "$BACKUP_ENABLED" == true ]]; then
    echo "[INFO] $(date +'%Y-%m-%d %H:%M:%S') - Starting the backup process..." | tee -a "$ERROR_LOG_FILE"
    backup_schema
    backup_data
    backup_full
    backup_clean_schema
    echo "[INFO] $(date +'%Y-%m-%d %H:%M:%S') - All backup processes completed successfully." | tee -a "$ERROR_LOG_FILE"
else
    echo "[INFO] $(date +'%Y-%m-%d %H:%M:%S') - Backup is disabled in configuration." | tee -a "$ERROR_LOG_FILE"
fi

# Script tamamlandı
echo "[INFO] $(date +'%Y-%m-%d %H:%M:%S') - Backup script finished." | tee -a "$ERROR_LOG_FILE"
