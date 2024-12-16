-- ====================================================================================================
-- file: table_access_methods.sql
-- purpose: To define the methods of access for various data sources when they are requested.
-- ====================================================================================================
CREATE TABLE access_methods (
    access_method_id INT PRIMARY KEY AUTO_INCREMENT,
    access_method_code VARCHAR(20) UNIQUE NOT NULL COMMENT 'Unique code for each type (open_access, free, subscription, ... )',
    access_method_name VARCHAR(50) NOT NULL UNIQUE COMMENT 'Name of the type (Open Access, Free, Subscription, ...)',
    access_method_description VARCHAR(255) NULL DEFAULT NULL COMMENT 'Detailed description for type'
) COMMENT 'Access Methods';