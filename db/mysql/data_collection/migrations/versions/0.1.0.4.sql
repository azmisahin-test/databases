-- ===================================================================================
-- @file: 0.1.0.4.sql
-- @purpose: geography
-- @dependencies: 0.1.0.3.sql
-- @description: geography tables and seeds 
-- ===================================================================================
SOURCE db/mysql/data_collection/schemas/geography/tables/table_countries.sql;
SOURCE db/mysql/data_collection/schemas/geography/tables/table_languages.sql;
COMMIT;
SOURCE db/mysql/data_collection/schemas/geography/seeds/seed_countries.sql;
SOURCE db/mysql/data_collection/schemas/geography/seeds/seed_languages.sql;
COMMIT;