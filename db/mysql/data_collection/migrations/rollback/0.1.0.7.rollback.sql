-- ===================================================================================
-- @file: 0.1.0.7.rollback.sql
-- @version: 0.1.0.7
-- ===================================================================================
DROP TABLE IF EXISTS measurements_of_services;
DROP TABLE IF EXISTS service_country;
DROP TABLE IF EXISTS service_language;
DROP TABLE IF EXISTS service_parameters;
DROP TABLE IF EXISTS service_platform;
DROP TABLE IF EXISTS service_types;
DROP TABLE IF EXISTS services;
COMMIT;
DROP VIEW IF EXISTS view_measurements_of_services_report;
DROP VIEW IF EXISTS view_service_full_overview;
DROP VIEW IF EXISTS view_service_full_overview_with_url;
DROP VIEW IF EXISTS view_service_overview;
DROP VIEW IF EXISTS view_service_parameters;
DROP VIEW IF EXISTS view_service_platform;
COMMIT;