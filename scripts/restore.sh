#!/bin/bash

# scripts/restore.sh
# Restore MySQL database from backup files

CONFIG_FILE="$1"
BACKUP_FILE="$2"

# Check for jq command
if ! command -v jq &> /dev/null; then
    log_message "ERROR" "jq command not found. Please install jq."
    exit 1
fi

# Check parameters
if [[ -z "$CONFIG_FILE" || -z "$BACKUP_FILE" ]]; then
    log_message "ERROR" "Error: Both config file and backup file paths are required."
    log_message "ERROR" "Usage: bash restore.sh /path/to/config.json /path/to/backup_file.sql"
    exit 1
fi

# Load configuration values
DB_NAME=$(jq -r '.database' "$CONFIG_FILE")
MY_CNF_FILE=$(jq -r '.config_file.mysql' "$CONFIG_FILE")
ERROR_LOG_FILE=$(jq -r '.error_handling.error_log_file' "$CONFIG_FILE")

# Redirect errors to log file
exec 2>>"$ERROR_LOG_FILE"

# Function to log messages to both console and log file
log_message() {
    local LEVEL="$1"
    local MESSAGE="$2"
    local DATE_TIME=$(date "+%Y-%m-%d %H:%M:%S")
    echo -e "[$DATE_TIME] [$LEVEL] $MESSAGE" | tee -a "$ERROR_LOG_FILE"
}

# Wait for MySQL service
log_message "INFO" "Waiting for MySQL to be ready..."
until mysql --defaults-extra-file="$MY_CNF_FILE" -e "SELECT 1" &> /dev/null; do
    sleep 2
    log_message "INFO" "MySQL is not ready. Waiting..."
done
log_message "INFO" "MySQL is ready. Starting restore process."

# Function to restore the database
restore_database() {
    log_message "INFO" "Restoring database from backup file: $BACKUP_FILE"
    if mysql --defaults-extra-file="$MY_CNF_FILE" "$DB_NAME" < "$BACKUP_FILE"; then
        log_message "SUCCESS" "Database restore completed successfully."
    else
        log_message "ERROR" "An error occurred during the restore process."
        exit 1
    fi
}

# Confirm the restore process with user
read -p "Are you sure you want to restore the database '$DB_NAME' from '$BACKUP_FILE'? This will overwrite current data. (y/n): " CONFIRM
if [[ "$CONFIRM" == [yY] ]]; then
    restore_database
else
    log_message "INFO" "Restore process canceled."
    exit 0
fi
