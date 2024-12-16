-- ====================================================================================================
-- file: table_data_monitoring_log.sql
-- purpose: Insert initial data into the data_monitoring_log table
-- ====================================================================================================
CREATE TABLE data_monitoring_log (
    id INT AUTO_INCREMENT PRIMARY KEY,
    process_type VARCHAR(50) COMMENT '(e.g. data_ingestion, ...',
    record_id INT NOT NULL,
    monitoring_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    issue_detected VARCHAR(255) COMMENT '(e.g. Lack of Data)',
    issue_details TEXT
);