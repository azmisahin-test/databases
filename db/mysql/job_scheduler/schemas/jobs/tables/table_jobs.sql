-- ====================================================================================================
-- file: table_jobs.sql
-- purpose: To track and manage jobs related to data processing from specific data sources.
-- This table is used for monitoring the status of data-related tasks within workflows.
-- ====================================================================================================
CREATE TABLE jobs (
    job_id INT AUTO_INCREMENT PRIMARY KEY COMMENT 'Unique identifier for each job; serves as the primary key for the table',
    job_type_id INT NOT NULL COMMENT 'Specifies the type of processing job, e.g., "data extraction," "data transformation"',
    job_status_type_id INT DEFAULT 1 COMMENT 'Tracks the current status of the job; helps in monitoring the data processing lifecycle',
    job_priority_level_id INT DEFAULT 1 COMMENT 'Priority level of the job; higher-priority jobs can be processed faster if necessary',
    job_name VARCHAR(50) NOT NULL COMMENT 'Name of the job, providing a quick identifier related to the data source or type of processing',
    job_description VARCHAR(255) DEFAULT NULL COMMENT 'Description of the job; provides context about the processing task and requirements',
    job_metadata JSON DEFAULT NULL COMMENT 'Additional metadata for the job, providing extensible fields for dynamic data',
    scheduled_time TIMESTAMP COMMENT 'The planned time for executing the job; helps in scheduling data processing tasks',
    processing_started_at TIMESTAMP NULL COMMENT 'Timestamp for when the data processing job started',
    processing_completed_at TIMESTAMP NULL COMMENT 'Timestamp for when the data processing job finished',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT 'Timestamp for when the job record was created',
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp for the most recent job record update'
) COMMENT 'Table for tracking jobs with dynamic data sources and statuses in various workflows.';