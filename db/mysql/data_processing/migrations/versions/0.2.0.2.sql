-- ===================================================================================
-- @file: 0.2.0.1.sql
-- @purpose: categories
-- @dependencies: 0.1.x
-- @description: categories tables, seeds
-- ===================================================================================
SOURCE db/mysql/data_processing/schemas/categories/tables/table_categories.sql;
SOURCE db/mysql/data_processing/schemas/categories/tables/table_category_services.sql;
SOURCE db/mysql/data_processing/schemas/categories/tables/table_category_tags.sql;
SOURCE db/mysql/data_processing/schemas/categories/tables/table_tags.sql;
COMMIT;
SOURCE db/mysql/data_processing/schemas/categories/seeds/seed_categories.sql;
SOURCE db/mysql/data_processing/schemas/categories/seeds/seed_category_services.sql;
SOURCE db/mysql/data_processing/schemas/categories/seeds/seed_category_tags.sql;
SOURCE db/mysql/data_processing/schemas/categories/seeds/seed_tags.sql;
COMMIT;