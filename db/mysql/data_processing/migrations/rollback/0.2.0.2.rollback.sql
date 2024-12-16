-- ===================================================================================
-- @file: 0.2.0.1.rollback.sql
-- @version: 0.2.0.1
-- ===================================================================================
DROP TABLE IF EXISTS categories;
DROP TABLE IF EXISTS category_services;
DROP TABLE IF EXISTS category_tags;
DROP TABLE IF EXISTS tags;
COMMIT;