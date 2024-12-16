-- ====================================================================================================
-- file: table_data_validation_log.sql
-- purpose: Insert initial data into the data_validation_log table
-- ====================================================================================================
CREATE TABLE data_validation_log (
    id INT AUTO_INCREMENT PRIMARY KEY,
    record_id INT NOT NULL,
    validation_rules_applied TEXT,
    validation_status VARCHAR(50) COMMENT 'Values ​​such as Success or Error',
    error_details TEXT
) COMMENT 'data_validation_log';