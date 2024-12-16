-- ====================================================================================================
-- file: table_data_formats.sql
-- purpose: To define general formats of data, typically similar to file types.
-- This table allows for the identification and description of various data formats used in the system.
-- ====================================================================================================
CREATE TABLE data_formats (
    data_format_id INT PRIMARY KEY AUTO_INCREMENT,
    data_format_code VARCHAR(20) UNIQUE NOT NULL COMMENT 'Unique code for each type (json, xml, csv, html, yaml, ... )',
    data_format_name VARCHAR(50) NOT NULL UNIQUE COMMENT 'Name of the type (JavaScript Object Notation, Extensible Markup Language, comma-separated values, Hypertext Markup Language, Aint Markup Language, ...)',
    data_format_description VARCHAR(255) NULL DEFAULT NULL COMMENT 'Detailed description for type'
) COMMENT 'This table facilitates the addition of various data formats from different data sources, ensuring flexibility in format handling.';