-- ====================================================================================================
-- file: seed_service_types.sql
-- purpose: Insert example data into the service_types table
-- ====================================================================================================
INSERT INTO service_types (
        service_type_code,
        service_type_name,
        service_type_description
    )
VALUES (
        'web',
        'Web Scraping',
        'Service that involves scraping data from web pages'
    ),
    (
        'api',
        'API Service',
        'Service provided as an API for data access or interaction'
    ),
    (
        'ftp',
        'FTP Service',
        'Service that provides data through an FTP server'
    ),
    (
        'db',
        'Database Service',
        'Direct connection to a database for data retrieval'
    ),
    (
        'mq',
        'Message Queue',
        'Service that provides data through a message queue system'
    ),
    (
        'stream',
        'Streaming Service',
        'Real-time data streaming service'
    ),
    (
        'batch',
        'Batch Processing',
        'Service that provides data in scheduled batch jobs'
    );