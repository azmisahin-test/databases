-- ===================================================================================
-- @file: 0.3.0.2.rollback.sql
-- @version: 0.3.0.2
-- ===================================================================================
DROP TABLE IF EXISTS task_history;
DROP TABLE IF EXISTS task_status_types;
DROP TABLE IF EXISTS task_types;
DROP TABLE IF EXISTS tasks;
COMMIT;