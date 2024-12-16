-- ====================================================================================================
-- file: table_job_history.sql
-- purpose:
-- ====================================================================================================
CREATE TABLE job_history (
    job_history_id INT AUTO_INCREMENT PRIMARY KEY COMMENT 'Unique identifier for each history record',
    job_id INT NOT NULL COMMENT 'Reference to the job being tracked',
    job_status_type_id INT DEFAULT 1 COMMENT 'Tracks the current status of the job; helps in monitoring the data processing lifecycle',
    job_priority_level_id INT NOT NULL COMMENT 'The priority level of the job at this point in time',
    change_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT 'Timestamp for when the status change occurred',
    additional_metadata JSON DEFAULT NULL COMMENT 'Any additional information related to the job status change',
    execution_duration int COMMENT 'Duration of execution in seconds'
) COMMENT 'Table for tracking the history of jobs, including status changes and other relevant information.';