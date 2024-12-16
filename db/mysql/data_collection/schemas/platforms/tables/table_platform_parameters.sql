-- ====================================================================================================
-- file: table_platform_parameters.sql
-- purpose: 
-- ====================================================================================================
CREATE TABLE platform_parameters (
    parameter_id INT AUTO_INCREMENT PRIMARY KEY,
    platform_id INT NOT NULL,
    parameter_definition_id INT NOT NULL,
    parameter_value VARCHAR(512),
    is_required BOOLEAN DEFAULT FALSE
) COMMENT 'platform_parameters';