-- ====================================================================================================
-- file: seed_job_types.sql
-- purpose: Insert initial data into the job_types table
-- ====================================================================================================
INSERT INTO job_types (
        job_type_code,
        job_type_name,
        job_type_description
    )
VALUES (
        'data_extraction',
        'Data Extraction',
        'Extracting data from various sources for further processing'
    ),
    (
        'data_transformation',
        'Data Transformation',
        'Transforming data into a required format or structure'
    ),
    (
        'data_loading',
        'Data Loading',
        'Loading data into a target data store or database'
    ),
    (
        'data_validation',
        'Data Validation',
        'Ensuring the accuracy and quality of data before processing'
    ),
    (
        'data_archiving',
        'Data Archiving',
        'Archiving data for long-term storage and compliance'
    );
-- You can add more job types as necessary