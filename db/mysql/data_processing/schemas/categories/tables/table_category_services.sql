-- ====================================================================================================
-- file: table_category_services.sql
-- purpose: 
-- ====================================================================================================
CREATE TABLE category_services (
    category_id int NOT NULL COMMENT 'Foreign key referencing categories table',
    service_id int NOT NULL COMMENT 'Foreign key referencing services table',
    data_schema_id INT DEFAULT NULL COMMENT 'References the data_schemas table; associates each service with a data schema'
) COMMENT 'category_services';