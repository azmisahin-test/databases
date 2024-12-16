-- ===================================================================================
-- @file: 0.1.0.3.rollback.sql
-- @version: 0.1.0.3
-- ===================================================================================
DROP TABLE IF EXISTS access_methods;
DROP TABLE IF EXISTS access_types;
DROP TABLE IF EXISTS data_formats;
DROP TABLE IF EXISTS parameter_definitions;
DROP TABLE IF EXISTS status_types;
COMMIT;