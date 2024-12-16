-- ====================================================================================================
-- file: table_data_cleaning_log.sql
-- purpose: Insert initial data into the data_cleaning_log table
-- ====================================================================================================
CREATE TABLE data_cleaning_log (
    id INT AUTO_INCREMENT PRIMARY KEY,
    record_id INT NOT NULL,
    cleaning_steps_applied TEXT,
    cleaning_status VARCHAR(50),
    error_details TEXT
);