-- ====================================================================================================
-- file: table_job_priority_levels.sql
-- purpose: 
-- ====================================================================================================
CREATE TABLE job_priority_levels (
    job_priority_level_id INT PRIMARY KEY AUTO_INCREMENT,
    job_priority_level_code VARCHAR(20) UNIQUE NOT NULL COMMENT 'Unique code for each type (high, medium, low, ... )',
    job_priority_level_name VARCHAR(50) NOT NULL UNIQUE COMMENT 'Name of the type (High Priority, Medium Priority, Low Priority, ...)',
    job_priority_level_description VARCHAR(255) NOT NULL COMMENT 'Detailed description for type'
) COMMENT 'Job Priority Levels';