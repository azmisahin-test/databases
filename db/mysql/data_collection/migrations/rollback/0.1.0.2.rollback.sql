-- ===================================================================================
-- @file: 0.1.0.2.rollback.sql
-- @version: 0.1.0.2
-- ===================================================================================
DROP TABLE IF EXISTS audit_log;
COMMIT;