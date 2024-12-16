-- ===================================================================================
-- @file: 0.2.0.2.sql
-- @purpose: data_management
-- @dependencies: 0.2.0.1.sql
-- @description: data_management tables, seeds, views
-- ===================================================================================
SOURCE db/mysql/data_processing/schemas/data_management/tables/table_data_lakes.sql;
SOURCE db/mysql/data_processing/schemas/data_management/tables/table_data_schema_types.sql;
SOURCE db/mysql/data_processing/schemas/data_management/tables/table_data_schemas.sql;
SOURCE db/mysql/data_processing/schemas/data_management/tables/table_data_warehouse_tags.sql;
SOURCE db/mysql/data_processing/schemas/data_management/tables/table_data_warehouses.sql;
COMMIT;
SOURCE db/mysql/data_processing/schemas/data_management/seeds/seed_data_lakes.sql;
SOURCE db/mysql/data_processing/schemas/data_management/seeds/seed_data_schema_types.sql;
SOURCE db/mysql/data_processing/schemas/data_management/seeds/seed_data_schemas.sql;
SOURCE db/mysql/data_processing/schemas/data_management/seeds/seed_data_warehouse_tags.sql;
SOURCE db/mysql/data_processing/schemas/data_management/seeds/seed_data_warehouses.sql;
COMMIT;