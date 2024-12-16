-- ====================================================================================================
-- file: table_data_schema_types.sql
-- purpose: To categorize data by their fundamental structures and define standards.
-- This table establishes various schema types used for organizing and validating data structures.
-- ====================================================================================================
CREATE TABLE data_schema_types (
    data_schema_type_id INT PRIMARY KEY AUTO_INCREMENT,
    data_schema_type_code VARCHAR(20) UNIQUE NOT NULL COMMENT 'Unique identifier for each schema type (e.g., ''TS'' for time_series, ''HT'' for historical)',
    data_schema_type_name VARCHAR(50) NOT NULL COMMENT 'Standardized name of the schema type',
    data_schema_type_description VARCHAR(255) NULL DEFAULT NULL COMMENT 'Description explaining the main concept of the schema',
    data_schema_type JSON COMMENT 'JSON-B for JSON Schema validation',
    data_schema_type_reference JSON COMMENT 'JSON-B for reference usage of schema standards'
) COMMENT 'This table categorizes data by their fundamental structures and defines standards.';