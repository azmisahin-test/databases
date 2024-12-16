-- ===================================================================================
-- @file: 0.1.0.3.sql
-- @purpose: common
-- @dependencies: 0.1.0.2.sql
-- @description: common tables and seeds 
-- ===================================================================================
SOURCE db/mysql/data_collection/schemas/common/tables/table_access_methods.sql;
SOURCE db/mysql/data_collection/schemas/common/tables/table_access_types.sql;
SOURCE db/mysql/data_collection/schemas/common/tables/table_data_formats.sql;
SOURCE db/mysql/data_collection/schemas/common/tables/table_parameter_definitions.sql;
SOURCE db/mysql/data_collection/schemas/common/tables/table_status_types.sql;
COMMIT;
SOURCE db/mysql/data_collection/schemas/common/seeds/seed_access_methods.sql;
SOURCE db/mysql/data_collection/schemas/common/seeds/seed_access_types.sql;
SOURCE db/mysql/data_collection/schemas/common/seeds/seed_data_formats.sql;
SOURCE db/mysql/data_collection/schemas/common/seeds/seed_parameter_definitions.sql;
SOURCE db/mysql/data_collection/schemas/common/seeds/seed_status_types.sql;
COMMIT;