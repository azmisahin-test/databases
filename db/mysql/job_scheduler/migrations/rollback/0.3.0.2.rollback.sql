-- ===================================================================================
-- @file: 0.3.0.1.rollback.sql
-- @version: 0.3.0.1
-- ===================================================================================
DROP TABLE IF EXISTS job_history;
DROP TABLE IF EXISTS job_priority_levels;
DROP TABLE IF EXISTS job_service;
DROP TABLE IF EXISTS job_status_types;
DROP TABLE IF EXISTS job_types;
DROP TABLE IF EXISTS jobs;
COMMIT;