-- ====================================================================================================
-- file: table_service_parameters.sql
-- purpose: 
-- ====================================================================================================
CREATE TABLE service_parameters (
    parameter_id INT AUTO_INCREMENT PRIMARY KEY,
    service_id INT NOT NULL,
    parameter_definition_id INT NOT NULL,
    parameter_value VARCHAR(512),
    is_required BOOLEAN DEFAULT FALSE
) COMMENT 'service_parameters';