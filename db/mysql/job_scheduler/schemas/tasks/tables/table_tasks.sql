-- ====================================================================================================
-- file: table_tasks.sql
-- purpose: Represents a smaller, specific part of a job. It defines specific actions or activities required to complete a job.
-- Tasks are generally shorter and more manageable pieces of work.
-- ====================================================================================================
CREATE TABLE tasks (
    task_id INT AUTO_INCREMENT PRIMARY KEY COMMENT 'Unique identifier for each task; serves as the primary key for the table',
    task_type_id INT NOT NULL COMMENT 'Specifies the type of task, e.g., "data extraction," "data transformation," or "notification"',
    task_status_type_id INT NOT NULL DEFAULT 1 COMMENT 'Indicates the current status of the task, e.g., "pending," "in progress," or "completed"',
    task_description VARCHAR(255) NULL COMMENT 'Description of the task and its purpose; provides details on what the task entails',
    task_scheduled_time TIMESTAMP NOT NULL COMMENT 'Scheduled execution time of the task; defines when the task is set to run',
    job_id INT COMMENT 'Relationship link to the job; allows tracking of which tasks are associated with specific jobs',
    scheduled_interval INT COMMENT 'Scheduled interval for recurring tasks, allowing repetition at specified intervals',
    retry_count INT DEFAULT 0 COMMENT 'Number of retry attempts for failed tasks; tracks how many times a task has re-attempted execution',
    error_message TEXT NULL COMMENT 'Error message generated if the task fails; provides insight into why the task was unsuccessful',
    execution_time TIME COMMENT 'Tracks the duration taken for task completion',
    notification_preferences JSON COMMENT 'Notification settings, e.g., {"on_completion": true, "on_failure": true, "notification_channel": "email"}',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT 'Timestamp for when the task was created; automatically set to the current time upon creation'
) COMMENT 'Tasks to be performed as part of jobs.';