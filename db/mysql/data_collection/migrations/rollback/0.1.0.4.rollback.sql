-- ===================================================================================
-- @file: 0.1.0.4.rollback.sql
-- @version: 0.1.0.4
-- ===================================================================================
DROP TABLE IF EXISTS countries;
DROP TABLE IF EXISTS languages;
COMMIT;