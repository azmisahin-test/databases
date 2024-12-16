-- ===================================================================================
-- @file: 0.2.0.4.rollback.sql
-- @version: 0.2.0.4
-- ===================================================================================
DROP TABLE IF EXISTS category_services;
DROP TABLE IF EXISTS data_schemas;
DROP TABLE IF EXISTS category_tags;
DROP TABLE IF EXISTS categories;
COMMIT;
