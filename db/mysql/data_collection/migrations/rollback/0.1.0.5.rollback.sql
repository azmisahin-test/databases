-- ===================================================================================
-- @file: 0.1.0.5.rollback.sql
-- @version: 0.1.0.5
-- ===================================================================================
DROP TABLE IF EXISTS measurements_of_providers;
DROP TABLE IF EXISTS providers;
COMMIT;
DROP VIEW IF EXISTS view_measurements_of_providers_report;
COMMIT;