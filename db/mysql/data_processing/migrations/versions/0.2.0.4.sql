-- ===================================================================================
-- @file: 0.2.0.3.sql
-- @purpose: data_processing
-- @dependencies: 0.2.0.2.sql
-- @description: data_processing tables, seeds
-- ===================================================================================
SOURCE db/mysql/data_processing/schemas/data_processing/tables/table_data_cleaning_log.sql;
SOURCE db/mysql/data_processing/schemas/data_processing/tables/table_data_ingestion_log.sql;
SOURCE db/mysql/data_processing/schemas/data_processing/tables/table_data_monitoring_log.sql;
SOURCE db/mysql/data_processing/schemas/data_processing/tables/table_data_processing_rules.sql;
SOURCE db/mysql/data_processing/schemas/data_processing/tables/table_data_storage_log.sql;
SOURCE db/mysql/data_processing/schemas/data_processing/tables/table_data_transformation_log.sql;
SOURCE db/mysql/data_processing/schemas/data_processing/tables/table_data_validation_log.sql;
COMMIT;
SOURCE db/mysql/data_processing/schemas/data_processing/seeds/seed_data_processing_rules.sql;
COMMIT;