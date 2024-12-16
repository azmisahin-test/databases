-- ===================================================================================
-- @file: 0.2.0.2.rollback.sql
-- @version: 0.2.0.2
-- ===================================================================================
DROP TABLE IF EXISTS data_lakes;
DROP TABLE IF EXISTS data_schema_types;
DROP TABLE IF EXISTS data_schemas;
DROP TABLE IF EXISTS data_warehouse_tags;
DROP TABLE IF EXISTS data_warehouses;
COMMIT;