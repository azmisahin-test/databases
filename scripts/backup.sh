#!/bin/bash
# scripts/backup.sh

# Config dosyasını parametre olarak al
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

# jq ile config dosyasını okuma
DATABASE=$(jq -r '.database' "$CONFIG_FILE")
MY_CNF_FILE=$(jq -r '.config_file.mysql' "$CONFIG_FILE")
BACKUP_ENABLED=$(jq -r '.backup.enabled' "$CONFIG_FILE")
BACKUP_DIRECTORY=$(jq -r '.backup.backup_directory' "$CONFIG_FILE")
LOG_ERRORS=$(jq -r '.error_handling.log_errors' "$CONFIG_FILE")

# Hataları log dosyasına yönlendirme
if [[ "$LOG_ERRORS" == true ]]; then
    exec 2>>"$ERROR_LOG_FILE"
fi

# Log başlatma
echo "[INFO] $(date +'%Y-%m-%d %H:%M:%S') - Starting backup script." | tee -a "$ERROR_LOG_FILE"

# Yedekleme dizinini oluşturma
mkdir -p "$BACKUP_DIRECTORY"

# MySQL servisi için bekleme
echo "[INFO] $(date +'%Y-%m-%d %H:%M:%S') - Waiting for MySQL to be ready..." | tee -a "$ERROR_LOG_FILE"
until mysql --defaults-extra-file="$MY_CNF_FILE" -e "SELECT 1" &> /dev/null; do
    sleep 2
    echo "[INFO] $(date +'%Y-%m-%d %H:%M:%S') - MySQL is not ready. Waiting..." | tee -a "$ERROR_LOG_FILE"
done
echo "[INFO] $(date +'%Y-%m-%d %H:%M:%S') - MySQL is ready." | tee -a "$ERROR_LOG_FILE"

# Yedekleme işlemi
if [[ "$BACKUP_ENABLED" == true ]]; then
    echo "[INFO] $(date +'%Y-%m-%d %H:%M:%S') - Starting backup for database: $DATABASE" | tee -a "$ERROR_LOG_FILE"
    BACKUP_FILE="$BACKUP_DIRECTORY/$(date +%F_%T)_$DATABASE.sql"
    if mysqldump --defaults-extra-file="$MY_CNF_FILE" --no-tablespaces --single-transaction "$DATABASE" > "$BACKUP_FILE"; then
        echo "[SUCCESS] $(date +'%Y-%m-%d %H:%M:%S') - Backup completed successfully: $BACKUP_FILE" | tee -a "$ERROR_LOG_FILE"
    else
        echo "[ERROR] $(date +'%Y-%m-%d %H:%M:%S') - An error occurred during the backup process." | tee -a "$ERROR_LOG_FILE"
        exit 1
    fi
else
    echo "[INFO] $(date +'%Y-%m-%d %H:%M:%S') - Backup is disabled in the configuration." | tee -a "$ERROR_LOG_FILE"
fi

# Script tamamlandı
echo "[INFO] $(date +'%Y-%m-%d %H:%M:%S') - Backup process completed." | tee -a "$ERROR_LOG_FILE"
