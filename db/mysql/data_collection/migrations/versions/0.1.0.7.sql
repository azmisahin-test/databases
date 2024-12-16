-- ===================================================================================
-- @file: 0.1.0.7.sql
-- @purpose: services
-- @dependencies: 0.1.0.6.sql
-- @description: services tables, seeds, views
-- ===================================================================================
SOURCE db/mysql/data_collection/schemas/services/tables/table_measurements_of_services.sql;
SOURCE db/mysql/data_collection/schemas/services/tables/table_service_country.sql;
SOURCE db/mysql/data_collection/schemas/services/tables/table_service_language.sql;
SOURCE db/mysql/data_collection/schemas/services/tables/table_service_parameters.sql;
SOURCE db/mysql/data_collection/schemas/services/tables/table_service_platform.sql;
SOURCE db/mysql/data_collection/schemas/services/tables/table_service_types.sql;
SOURCE db/mysql/data_collection/schemas/services/tables/table_services.sql;
COMMIT;
SOURCE db/mysql/data_collection/schemas/services/seeds/seed_service_country.sql;
SOURCE db/mysql/data_collection/schemas/services/seeds/seed_service_language.sql;
SOURCE db/mysql/data_collection/schemas/services/seeds/seed_service_parameters.sql;
SOURCE db/mysql/data_collection/schemas/services/seeds/seed_service_platform.sql;
SOURCE db/mysql/data_collection/schemas/services/seeds/seed_service_types.sql;
SOURCE db/mysql/data_collection/schemas/services/seeds/seed_services.sql;
COMMIT;
SOURCE db/mysql/data_collection/schemas/services/views/view_measurements_of_services_report.sql;
SOURCE db/mysql/data_collection/schemas/services/views/view_service_full_overview.sql;
SOURCE db/mysql/data_collection/schemas/services/views/view_service_full_overview_with_url.sql;
SOURCE db/mysql/data_collection/schemas/services/views/view_service_overview.sql;
SOURCE db/mysql/data_collection/schemas/services/views/view_service_parameters.sql;
SOURCE db/mysql/data_collection/schemas/services/views/view_service_platform.sql;
COMMIT;