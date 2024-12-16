-- ====================================================================================================
-- file: seed_job_status_types.sql
-- purpose: Insert initial data into the job_status_types table
-- ====================================================================================================
INSERT INTO job_status_types (
        job_status_type_code,
        job_status_type_name,
        job_status_type_description
    )
VALUES (
        'pending',
        'Pending',
        'The job is waiting to be processed.'
    ),
    (
        'in_progress',
        'In Progress',
        'The job is currently being processed.'
    ),
    (
        'completed',
        'Completed',
        'The job has been completed successfully.'
    ),
    (
        'failed',
        'Failed',
        'The job has failed during processing.'
    ),
    (
        'cancelled',
        'Cancelled',
        'Job was cancelled before completion.'
    );