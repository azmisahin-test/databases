-- ====================================================================================================
-- file: table_data_schemas.sql
-- purpose: To define standardized data schemas for collecting various types of data from different sources.
-- This table will facilitate consistent data collection practices across diverse datasets.
-- ====================================================================================================
CREATE TABLE data_schemas (
    data_schema_id INT AUTO_INCREMENT PRIMARY KEY COMMENT 'Unique identifier for each data category schema',
    data_schema_code VARCHAR(20) UNIQUE NOT NULL COMMENT 'Unique code for each category schema ()',
    data_schema_name VARCHAR(50) NOT NULL COMMENT 'Standardized name of the data category schema',
    data_schema_description VARCHAR(255) DEFAULT NULL COMMENT 'Detailed description of the data category',
    data_schema JSON NOT NULL COMMENT 'JSON structure for schema validation',
    data_schema_reference JSON DEFAULT NULL COMMENT 'Reference usage for the schema',
    data_schema_recommended_databases VARCHAR(255) DEFAULT NULL COMMENT 'Recommended databases for the data category (e.g., Elasticsearch, InfluxDB)',
    data_schema_type_id INT COMMENT 'ID to associate with data_schema_types; references the data_schema_types table'
) COMMENT 'Data Schemas';