-- ====================================================================================================
-- file: table_parameter_definitions.sql
-- purpose: 
-- ====================================================================================================
CREATE TABLE parameter_definitions (
    parameter_definition_id INT AUTO_INCREMENT PRIMARY KEY,
    parameter_name VARCHAR(255) NOT NULL,
    parameter_type ENUM('string', 'integer', 'boolean', 'json', 'array') NOT NULL,
    description TEXT
) COMMENT 'parameter_definitions';