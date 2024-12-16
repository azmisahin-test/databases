#!/bin/bash
# scripts/migration.sh

# Config dosyasını parametre olarak al
CONFIG_FILE="$1"

# Loglama fonksiyonu
log_message() {
    local log_level="$1"
    local message="$2"
    local log_time=$(date +'%Y-%m-%d %H:%M:%S')
    echo "[$log_time] [$log_level] - $message" | tee -a "$ERROR_LOG_FILE"
}

# jq komutunun yüklü olup olmadığını kontrol et
if ! command -v jq &> /dev/null; then
    log_message "ERROR" "jq komutu bulunamadı. Lütfen jq'yu yükleyin."
    exit 1
fi

# Config dosyasının varlığını kontrol et
if [[ -z "$CONFIG_FILE" ]]; then
    log_message "ERROR" "Config dosyasının yolu parametre olarak gereklidir."
    exit 1
fi

# Config dosyasını oku
DATABASE=$(jq -r '.database' "$CONFIG_FILE")
MY_CNF_FILE=$(jq -r '.config_file.mysql' "$CONFIG_FILE")
MIGRATION_TYPE=$(jq -r '.migration_type' "$CONFIG_FILE")
MIGRATION_FILE_FORMAT=$(jq -r '.migration_file_format' "$CONFIG_FILE")
MIGRATION_TABLE=$(jq -r '.migration_table' "$CONFIG_FILE")
MIGRATIONS_DIRECTORY=$(jq -r '.migrations_directory' "$CONFIG_FILE")
ROLLBACK_ENABLED=$(jq -r '.rollback.enabled' "$CONFIG_FILE")
ROLLBACK_DIRECTORY=$(jq -r '.rollback.rollback_directory' "$CONFIG_FILE")
LOG_ERRORS=$(jq -r '.error_handling.log_errors' "$CONFIG_FILE")
ERROR_LOG_FILE=$(jq -r '.error_handling.error_log_file' "$CONFIG_FILE")
BACKUP_ENABLED=$(jq -r '.backup.enabled' "$CONFIG_FILE")
BACKUP_DIRECTORY=$(jq -r '.backup.backup_directory' "$CONFIG_FILE")
DESCRIPTION_ENABLED=$(jq -r '.migration_details.description' "$CONFIG_FILE")
APPLIED_BY_ENABLED=$(jq -r '.migration_details.applied_by' "$CONFIG_FILE")
VERSIONING_ENABLED=$(jq -r '.versioning.enabled' "$CONFIG_FILE")
CURRENT_VERSION=$(jq -r '.versioning.current_version' "$CONFIG_FILE")
APPLIED_VERSIONS=$(jq -r '.versioning.applied_versions' "$CONFIG_FILE")

# Hata log dosyasını hazırlama
mkdir -p "$(dirname "$ERROR_LOG_FILE")"
mkdir -p "$ROLLBACK_DIRECTORY"
mkdir -p "$BACKUP_DIRECTORY"

# Hataları log dosyasına yönlendirme
if [[ "$LOG_ERRORS" == true ]]; then
    exec 2>>"$ERROR_LOG_FILE"
fi

# MySQL servisi için bekleme
TIMEOUT=60  # 60 saniye bekleme süresi
START_TIME=$(date +%s)

log_message "INFO" "MySQL servisi için bekleniyor..."
until mysql --defaults-extra-file="$MY_CNF_FILE" -e "SELECT 1" &> /dev/null; do
    CURRENT_TIME=$(date +%s)
    ELAPSED_TIME=$((CURRENT_TIME - START_TIME))

    if [ $ELAPSED_TIME -ge $TIMEOUT ]; then
        log_message "ERROR" "MySQL $TIMEOUT saniye içinde hazır olmadı. Çıkılıyor..."
        exit 1
    fi
    
    sleep 2
    log_message "INFO" "MySQL servisi hazır değil. Bekleniyor..."
done
log_message "SUCCESS" "MySQL servisi hazır."

# Veritabanının var olup olmadığını kontrol et
DB_EXISTS=$(mysql --defaults-extra-file="$MY_CNF_FILE" -e "SHOW DATABASES LIKE '$DATABASE';" | grep "$DATABASE")

if [[ -z "$DB_EXISTS" ]]; then
    log_message "INFO" "Veritabanı '$DATABASE' mevcut değil. Veritabanı oluşturuluyor..."
    mysql --defaults-extra-file="$MY_CNF_FILE" -e "CREATE DATABASE $DATABASE;"
    if [[ $? -eq 0 ]]; then
        log_message "SUCCESS" "Veritabanı '$DATABASE' başarıyla oluşturuldu."
    else
        log_message "ERROR" "Veritabanı '$DATABASE' oluşturulamadı. Çıkılıyor..."
        exit 1
    fi
else
    log_message "INFO" "Veritabanı '$DATABASE' zaten mevcut."
fi

# Yedekleme işlemi
if [[ "$BACKUP_ENABLED" == true ]]; then
    log_message "INFO" "Veritabanı yedeği başlatılıyor: $DATABASE"
    BACKUP_FILE="$BACKUP_DIRECTORY/$(date +%F_%T)_$DATABASE.sql"
    if mysqldump --defaults-extra-file="$MY_CNF_FILE" --no-tablespaces --single-transaction "$DATABASE" > "$BACKUP_FILE"; then
        log_message "SUCCESS" "Yedekleme başarılı: $BACKUP_FILE"
    else
        log_message "ERROR" "Yedekleme sırasında bir hata oluştu."
        exit 1
    fi
else
    log_message "INFO" "Yedekleme devre dışı bırakılmış."
fi

# Migration işlemleri başlatılıyor
log_message "INFO" "Migration işlemleri başlatılıyor."

# Migration tablosunun var olup olmadığını kontrol et
mysql --defaults-extra-file="$MY_CNF_FILE" -D "$DATABASE" <<EOF
CREATE TABLE IF NOT EXISTS $MIGRATION_TABLE (
    version VARCHAR(255) PRIMARY KEY,
    description TEXT,
    applied_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    status ENUM('applied', 'rolled_back', 'pending') DEFAULT 'applied',
    applied_by VARCHAR(255),
    file VARCHAR(255),
    purpose VARCHAR(255),
    dependencies TEXT
);
EOF

# Migration dosyalarını sırayla çalıştır
for migration_file in "$MIGRATIONS_DIRECTORY"/*.$MIGRATION_FILE_FORMAT; do
    migration_version=$(basename "$migration_file" .$MIGRATION_FILE_FORMAT)

    # Daha önce uygulanıp uygulanmadığını kontrol et
    ALREADY_APPLIED=$(mysql --defaults-extra-file="$MY_CNF_FILE" -D "$DATABASE" -se "SELECT COUNT(*) FROM $MIGRATION_TABLE WHERE version = '$migration_version' AND status = 'applied';")
    if [[ "$ALREADY_APPLIED" -gt 0 ]]; then
        log_message "INFO" "$migration_version daha önce uygulanmış, atlanıyor."
        continue
    fi

    # Migration başlıklarını oku
    file_info=$(<"$migration_file")
    file=""
    purpose=""
    dependencies=""
    description=""

    while IFS= read -r line; do
        case "$line" in
            --\ @file:*) file=$(echo "$line" | cut -d' ' -f3);;
            --\ @purpose:*) purpose=$(echo "$line" | cut -d' ' -f3-);;
            --\ @dependencies:*) dependencies=$(echo "$line" | cut -d' ' -f4-);;
            --\ @description:*) description=$(echo "$line" | cut -d' ' -f4-);;
        esac
    done <<< "$file_info"

    # Bağımlılıkları kontrol et ve uygula
    if [[ -n "$dependencies" ]]; then
        log_message "INFO" "Bağımlılıkları kontrol ediliyor: $migration_version"
        for dep_version in $(echo "$dependencies" | tr "," "\n"); do
            log_message "INFO" "Migration $dep_version uygulanmış mı kontrol ediliyor."
            DEP_APPLIED=$(mysql --defaults-extra-file="$MY_CNF_FILE" -D "$DATABASE" -se "SELECT COUNT(*) FROM $MIGRATION_TABLE WHERE version = '$dep_version' AND status = 'applied';")
            if [[ "$DEP_APPLIED" -eq 0 ]]; then
                log_message "ERROR" "Bağımlılık migration $dep_version uygulanmamış. $migration_version atlanıyor."
                continue 2
            fi
        done
    fi

    # Rollback script'ini çalıştır
    if [[ "$ROLLBACK_ENABLED" == true && -f "$ROLLBACK_DIRECTORY/$migration_version.$MIGRATION_FILE_FORMAT" ]]; then
        log_message "INFO" "Rollback script'i bulunuyor. $migration_version için rollback işlemi çalıştırılıyor."
        mysql --defaults-extra-file="$MY_CNF_FILE" -D "$DATABASE" < "$ROLLBACK_DIRECTORY/$migration_version.$MIGRATION_FILE_FORMAT"
        if [[ $? -ne 0 ]]; then
            log_message "ERROR" "$migration_version rollback işlemi başarısız."
            exit 1
        fi
    fi

    # Migration'ı çalıştır
    mysql --defaults-extra-file="$MY_CNF_FILE" -D "$DATABASE" < "$migration_file"
    if [[ $? -eq 0 ]]; then
        log_message "SUCCESS" "$migration_version başarıyla uygulandı."
        mysql --defaults-extra-file="$MY_CNF_FILE" -D "$DATABASE" -e "INSERT INTO $MIGRATION_TABLE (version, description, applied_by, status, file, purpose, dependencies) VALUES ('$migration_version', '$description', '$USER', 'applied', '$file', '$purpose', '$dependencies');"
    else
        log_message "ERROR" "$migration_version uygulanırken hata oluştu."
        exit 1
    fi
done

log_message "INFO" "Migration işlemi tamamlandı."
