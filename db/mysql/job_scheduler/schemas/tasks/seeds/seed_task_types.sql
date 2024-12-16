-- ====================================================================================================
-- file: seed_task_types.sql
-- purpose: Insert example data into the task_types table
-- ====================================================================================================
INSERT INTO
    task_types (
        task_type_code,
        task_type_name,
        task_type_description
    )
VALUES (
        'data_extraction',
        'Data Extraction',
        'Process of extracting data from various sources for further analysis'
    ),
    (
        'data_transformation',
        'Data Transformation',
        'The process of converting extracted data into a desired format'
    ),
    (
        'data_loading',
        'Data Loading',
        'Loading transformed data into a data warehouse or database'
    ),
    (
        'data_analysis',
        'Data Analysis',
        'Analyzing the data to derive insights and support decision making'
    ),
    (
        'data_validation',
        'Data Validation',
        'Task for validating the data integrity and quality'
    ),
    (
        'notification',
        'Notification',
        'Task for sending notifications upon task completion or failure'
    ),
    (
        'report_generation',
        'Report Generation',
        'Generating reports based on analyzed data for stakeholders'
    );