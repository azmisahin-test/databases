-- ====================================================================================================
-- file: table_service_types.sql
-- purpose: 
-- ====================================================================================================
CREATE TABLE service_types (
    service_type_id INT PRIMARY KEY AUTO_INCREMENT COMMENT 'Unique identifier for the type',
    service_type_code VARCHAR(20) UNIQUE NOT NULL COMMENT 'Unique code for each type',
    service_type_name VARCHAR(50) NOT NULL COMMENT 'Name of the type',
    service_type_description VARCHAR(255) NOT NULL COMMENT 'Description of the type'
) COMMENT 'Service Types';