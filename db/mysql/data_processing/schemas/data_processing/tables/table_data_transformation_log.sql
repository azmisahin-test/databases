-- ====================================================================================================
-- file: table_data_transformation_log.sql
-- purpose: Insert initial data into the data_transformation_log table
-- ====================================================================================================
CREATE TABLE data_transformation_log (
    id INT AUTO_INCREMENT PRIMARY KEY,
    record_id INT NOT NULL,
    transformation_type VARCHAR(255) COMMENT '(e.g. format_change, ...)',
    transformation_status VARCHAR(50),
    transformation_details TEXT
) COMMENT 'data_transformation_log';