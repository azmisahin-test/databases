-- ====================================================================================================
-- file: table_data_storage_log.sql
-- purpose: Insert initial data into the data_storage_log table
-- ====================================================================================================
CREATE TABLE data_storage_log (
    id INT AUTO_INCREMENT PRIMARY KEY,
    record_id INT NOT NULL,
    storage_location VARCHAR(255) COMMENT '(e.g. MongoDB, PostgreSQL, ...)',
    storage_status VARCHAR(50),
    error_message TEXT
) COMMENT 'data_storage_log';