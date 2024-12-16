-- ===================================================================================
-- @file: 0.1.0.6.rollback.sql
-- @version: 0.1.0.6
-- ===================================================================================
DROP TABLE IF EXISTS measurements_of_platforms;
DROP TABLE IF EXISTS platform_parameters;
DROP TABLE IF EXISTS platform_provider;
DROP TABLE IF EXISTS platforms;
COMMIT;
DROP VIEW IF EXISTS view_measurements_of_platforms_report;
DROP VIEW IF EXISTS view_platform_parameters;
DROP VIEW IF EXISTS view_platform_provider;
COMMIT;