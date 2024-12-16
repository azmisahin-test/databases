# Database Migration and Backup Scripts

Bu proje, MySQL veritabanı için yedekleme, geri yükleme, migration ve rollback işlemlerini otomatikleştiren çeşitli Bash script'lerini içerir. Bu script'ler, migration dosyaları ve yapılandırma dosyaları ile birlikte çalışarak veritabanı işlemlerini daha kolay ve yönetilebilir hale getirir.

## İçerik

- `backup.sh`: Basit yedekleme işlemi gerçekleştirir.
- `backup_advanced.sh`: Daha gelişmiş yedekleme işlemi sunar, örneğin sıkıştırma ve otomatik dosya isimlendirme gibi.
- `restore.sh`: Veritabanı yedeğini geri yükler.
- `migration.sh`: Veritabanı migration dosyalarını çalıştırır.
- `rollback.sh`: Belirli bir versiyona kadar rollback işlemi yapar.

## Gereksinimler

- `jq` komutu (JSON dosyalarını okumak ve yazmak için)
- `mysql` ve `mysqldump` komutları
- `config.json` yapılandırma dosyası

```bash
chmod +x scripts/backup.sh scripts/backup_advanced.sh scripts/restore.sh scripts/migration.sh scripts/rollback.sh
```

## Kullanım

Her script'i çalıştırmadan önce gerekli parametreleri sağladığınızdan emin olun. Örneğin, `config.json` dosyasının yolu her script'e verilebilir.

### Config Dosyası (`config.json`)

Script'ler, gerekli yapılandırmaları almak için bir `config.json` dosyasına ihtiyaç duyar. Örnek bir `config.json` dosyası aşağıda verilmiştir:

```json
{
  "database": "my_database",
  "config_file": {
    "mysql": "/path/to/my.cnf"
  },
  "migration_type": "sql",
  "migration_file_format": "sql",
  "migration_table": "migration_history",
  "migrations_directory": "/path/to/migrations",
  "rollback": {
    "enabled": true,
    "rollback_directory": "/path/to/rollback"
  },
  "error_handling": {
    "log_errors": true,
    "error_log_file": "/path/to/error.log"
  },
  "backup": {
    "enabled": true,
    "backup_directory": "/path/to/backup"
  },
  "migration_details": {
    "description": true,
    "applied_by": true
  },
  "versioning": {
    "enabled": true,
    "current_version": "1.0",
    "applied_versions": []
  }
}
```

### Script Kullanımı

Yedekleme (Backup)

Basit yedekleme:

```bash
backup.sh /path/to/config.json
```

Gelişmiş yedekleme:

```bash
backup_advanced.sh /path/to/config.json
```

Geri Yükleme (Restore)

Bir yedek dosyasını geri yüklemek için:

```bash
restore.sh /path/to/backup.sql /path/to/config.json
```

Migration (Veritabanı Güncelleme)

Migration dosyalarını uygulamak için:

```bash
migration.sh /path/to/config.json
```

Rollback (Geri Alma)

Belirli bir versiyona kadar geri dönmek için:

```bash
rollback.sh /path/to/config.json target_version
```

### Önemli Notlar

Script'ler çalıştırılmadan önce config.json dosyasındaki tüm yolların ve ayarların doğru olduğundan emin olun.
migration_table doğru ayarlandığında, migration ve rollback işlemleri bu tabloda kayıt tutacaktır.
Rollback işlemi, sadece rollback dosyalarının mevcut olması durumunda başarılı olacaktır.

### Log Dosyaları

Hata veya işlem kayıtları config.json dosyasında belirtilen error_log_file dosyasına yazılır. Hata takibi için bu dosyayı inceleyebilirsiniz.