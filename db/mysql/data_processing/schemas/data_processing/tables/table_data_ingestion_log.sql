-- ====================================================================================================
-- file: table_data_ingestion_log.sql
-- purpose: Insert initial data into the data_ingestion_Log table
-- ====================================================================================================
CREATE TABLE data_ingestion_log (
    id INT AUTO_INCREMENT PRIMARY KEY,
    source_name VARCHAR(255) NOT NULL,
    ingestion_start_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    ingestion_end_time TIMESTAMP,
    status VARCHAR(50),
    error_message TEXT
);