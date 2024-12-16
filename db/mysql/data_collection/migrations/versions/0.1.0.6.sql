-- ===================================================================================
-- @file: 0.1.0.6.sql
-- @purpose: platforms
-- @dependencies: 0.1.0.5.sql
-- @description: platforms tables and seeds 
-- ===================================================================================
SOURCE db/mysql/data_collection/schemas/platforms/tables/table_measurements_of_platforms.sql;
SOURCE db/mysql/data_collection/schemas/platforms/tables/table_platform_parameters.sql;
SOURCE db/mysql/data_collection/schemas/platforms/tables/table_platform_provider.sql;
SOURCE db/mysql/data_collection/schemas/platforms/tables/table_platforms.sql;
COMMIT;
SOURCE db/mysql/data_collection/schemas/platforms/seeds/seed_platform_parameters.sql;
SOURCE db/mysql/data_collection/schemas/platforms/seeds/seed_platform_provider.sql;
SOURCE db/mysql/data_collection/schemas/platforms/seeds/seed_platforms.sql;
COMMIT;
SOURCE db/mysql/data_collection/schemas/platforms/views/view_measurements_of_platforms_report.sql;
SOURCE db/mysql/data_collection/schemas/platforms/views/view_platform_parameters.sql;
SOURCE db/mysql/data_collection/schemas/platforms/views/view_platform_provider.sql;
COMMIT;