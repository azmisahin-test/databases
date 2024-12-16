-- ====================================================================================================
-- file: table_data_lakes.sql
-- purpose: 
-- ====================================================================================================
CREATE TABLE data_lakes (
    data_lake_id INT AUTO_INCREMENT COMMENT 'Unique identifier for each data record; serves as the primary key',
    data_lake_content JSON NOT NULL COMMENT 'Data is recorded with data format scheme',
    data_format_id INT NOT NULL COMMENT 'Unique code for each type (json, xml, csv, html, yaml, ... ) from data_formats',
    collection_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT 'Timestamp for when the record was created; useful for tracking data collection times',
    PRIMARY KEY (data_lake_id) COMMENT 'Primary key to uniquely identify each data record'
) COMMENT 'Data Lakes';