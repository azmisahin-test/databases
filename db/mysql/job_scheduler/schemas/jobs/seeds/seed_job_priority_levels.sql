-- ====================================================================================================
-- file: seed_job_priority_levels.sql
-- purpose: Insert initial data into the job_priorities table
-- ====================================================================================================
INSERT INTO job_priority_levels (
        job_priority_level_code,
        job_priority_level_name,
        job_priority_level_description
    )
VALUES (
        'high',
        'High Priority',
        'This job is of high importance and should be prioritized'
    ),
    (
        'medium',
        'Medium Priority',
        'This job has a medium priority level'
    ),
    (
        'low',
        'Low Priority',
        'This job has a low priority level and can be processed with lower urgency'
    );