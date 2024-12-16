-- ====================================================================================================
-- file: table_data_warehouse_tags.sql
-- purpose: To establish a many-to-many relationship between data records and tags used for categorization
-- or classification.
-- This table serves as a junction table linking data records with their associated tags.
-- ====================================================================================================
CREATE TABLE data_warehouse_tags (
    data_warehouse_id INT NOT NULL COMMENT 'Identifier for the data record; references the primary key of the data_warehouse table',
    tag_id INT NOT NULL COMMENT 'Identifier for the tag; references the primary key of the tags table'
) COMMENT 'Data Warehouse Tags';