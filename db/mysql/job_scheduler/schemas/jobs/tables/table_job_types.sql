-- ====================================================================================================
-- file: table_job_types.sql
-- purpose: 
-- ====================================================================================================
CREATE TABLE job_types (
    job_type_id INT PRIMARY KEY AUTO_INCREMENT,
    job_type_code VARCHAR(20) UNIQUE NOT NULL COMMENT 'Unique code for each job',
    job_type_name VARCHAR(50) NOT NULL COMMENT 'Name of the job type',
    job_type_description VARCHAR(255) NOT NULL COMMENT 'Description of the job type'
) COMMENT 'Job Types';