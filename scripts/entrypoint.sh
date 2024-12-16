echo 'Database Migration processes...'
scripts/migration.sh db/mysql/data_collection/config/migrations.json
scripts/migration.sh db/mysql/data_processing/config/migrations.json
scripts/migration.sh db/mysql/job_scheduler/config/migrations.json
scripts/migration.sh db/mysql/data_analysis/config/migrations.json

echo 'Backup processes...'
scripts/backup.sh db/mysql/data_collection/config/migrations.json
scripts/backup.sh db/mysql/data_processing/config/migrations.json
scripts/backup.sh db/mysql/job_scheduler/config/migrations.json
scripts/backup.sh db/mysql/data_analysis/config/migrations.json

echo 'Ready'
sleep infinity