-- ====================================================================================================
-- file: table_data_warehouses.sql
-- purpose: To store collected data records according to data standards and sources.
-- This table facilitates the organization and management of data records,
-- ensuring compliance with specified schemas and allowing for version control.
-- ====================================================================================================
CREATE TABLE data_warehouses (
    data_warehouse_id INT AUTO_INCREMENT COMMENT 'Unique identifier for each data record; serves as the primary key',
    data_schema_id INT NOT NULL COMMENT 'Reference to the data_schema table; indicates the category of the data_schemas',
    data_information_version INT DEFAULT 1 COMMENT 'Version control for data information',
    data_information JSON NOT NULL COMMENT 'Content of the data that complies with the schema',
    collection_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT 'Timestamp for when the record was created',
    data_source JSON NOT NULL COMMENT 'Information about data sources (e.g.,  { "type": "service", "service": { "service_id": 1 } })',
    PRIMARY KEY (data_warehouse_id) COMMENT 'Primary key to uniquely identify each data record'
) COMMENT 'Stores collected data records according to data standards and sources. This table ensures compliance with specified schemas and allows for version control.';