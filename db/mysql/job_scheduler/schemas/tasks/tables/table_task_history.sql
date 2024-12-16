-- ====================================================================================================
-- file: table_task_history.sql
-- purpose: To track the history of tasks, including their status, execution times,
-- and any error messages encountered during processing.
-- This table will serve as an audit trail for task execution, aiding in monitoring and troubleshooting.
-- ====================================================================================================
CREATE TABLE task_history (
    task_history_id INT AUTO_INCREMENT PRIMARY KEY COMMENT 'Unique identifier for each task history entry',
    task_id INT COMMENT 'Relationship to the main task; references the associated task',
    task_status_type_id INT NOT NULL DEFAULT 1 COMMENT 'Indicates the current status of the task, e.g., "pending," "in progress," or "completed"',
    error_message TEXT COMMENT 'Error message details if the task failed or encountered an issue',
    executed_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT 'Timestamp of when the task was executed',
    execution_time TIMESTAMP COMMENT 'Duration of task execution, recorded as an interval to measure performance'
) COMMENT 'Table to keep track of the history of task executions within the audit schema';