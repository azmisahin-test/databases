-- ====================================================================================================
-- file: table_job_status_types.sql
-- purpose: 
-- ====================================================================================================
CREATE TABLE job_status_types (
    job_status_type_id INT PRIMARY KEY AUTO_INCREMENT,
    job_status_type_code VARCHAR(20) UNIQUE NOT NULL COMMENT 'Unique code for each job status',
    job_status_type_name VARCHAR(50) NOT NULL COMMENT 'Name of the job status type',
    job_status_type_description VARCHAR(255) NOT NULL COMMENT 'Description of the job status type'
) COMMENT 'Job Status Types';