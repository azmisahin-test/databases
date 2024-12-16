-- ====================================================================================================
-- file: seed_task_status_types.sql
-- purpose: Insert initial data into the task_status_types table
-- ====================================================================================================
INSERT INTO
    task_status_types (
        task_status_type_code,
        task_status_type_name,
        task_status_type_description
    )
VALUES (
        'pending',
        'Pending',
        'The task is awaiting execution'
    ),
    (
        'in_progress',
        'In Progress',
        'Task is currently being executed'
    ),
    (
        'completed',
        'Completed',
        'The task has been completed successfully'
    ),
    (
        'failed',
        'Failed',
        'The task has failed to complete as expected'
    ),
    (
        'skipped',
        'Skipped',
        'Task was skipped due to a condition'
    );