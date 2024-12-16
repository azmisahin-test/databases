-- ====================================================================================================
-- file: table_task_status_types.sql
-- purpose: 
-- ====================================================================================================
CREATE TABLE task_status_types (
    task_status_type_id INT PRIMARY KEY AUTO_INCREMENT,
    task_status_type_code VARCHAR(20) UNIQUE NOT NULL COMMENT 'Unique code for each task status',
    task_status_type_name VARCHAR(50) NOT NULL COMMENT 'Name of the task status type',
    task_status_type_description VARCHAR(255) NOT NULL COMMENT 'Description of the task status type'
) COMMENT 'Task Status Types';