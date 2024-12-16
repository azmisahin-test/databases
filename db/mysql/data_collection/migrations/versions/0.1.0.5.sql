-- ===================================================================================
-- @file: 0.1.0.5.sql
-- @purpose: providers
-- @dependencies: 0.1.0.4.sql
-- @description: providers tables and seeds 
-- ===================================================================================
SOURCE db/mysql/data_collection/schemas/providers/tables/table_measurements_of_providers.sql;
SOURCE db/mysql/data_collection/schemas/providers/tables/table_providers.sql;
COMMIT;
SOURCE db/mysql/data_collection/schemas/providers/seeds/seed_providers.sql;
COMMIT;
SOURCE db/mysql/data_collection/schemas/providers/views/view_measurements_of_providers_report.sql;
COMMIT;