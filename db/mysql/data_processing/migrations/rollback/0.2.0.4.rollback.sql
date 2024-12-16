-- ===================================================================================
-- @file: 0.2.0.3.rollback.sql
-- @version: 0.2.0.3
-- ===================================================================================
DROP TABLE IF EXISTS data_cleaning_log;
DROP TABLE IF EXISTS data_ingestion_log;
DROP TABLE IF EXISTS data_monitoring_log;
DROP TABLE IF EXISTS data_processing_rules;
DROP TABLE IF EXISTS data_storage_log;
DROP TABLE IF EXISTS data_transformation_log;
DROP TABLE IF EXISTS data_validation_log;
COMMIT;