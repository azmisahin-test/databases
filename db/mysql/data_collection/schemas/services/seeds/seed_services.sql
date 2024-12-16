-- ====================================================================================================
-- file: seed_services.sql
-- purpose: Insert initial data into the services table
-- ====================================================================================================
INSERT INTO
    services (
        status_type_id,
        service_type_id,
        access_type_id,
        fetch_frequency,
        time_interval,
        next_fetch,
        last_fetched,
        last_error_message,
        access_method_id,
        data_format_id
    )
VALUES
    (
        1, -- status_type_id: active
        2, -- service_type_id: API 
        2, -- access_type_id: RSS 
        300, -- fetch_frequency: Fetch data every 5 minutes
        0, -- time_interval: Real-time data (0)
        NULL, -- next_fetch: Initially NULL, will be calculated automatically
        NULL, -- last_fetched: Initially NULL, will be updated on each fetch
        NULL, -- last_error_message:Initially no error, NULL
        2, -- access_method_id: Open access (sample value)
        2 -- data_format_id: XML format (sample value)
    ),
    (
        2, -- status_type_id: inactive
        2, -- service_type_id: API 
        2, -- access_type_id: RSS 
        300, -- fetch_frequency: Fetch data every 5 minutes
        0, -- time_interval: Real-time data (0)
        NULL, -- next_fetch: Initially NULL, will be calculated automatically
        NULL, -- last_fetched: Initially NULL, will be updated on each fetch
        NULL, -- last_error_message:Initially no error, NULL
        2, -- access_method_id: Open access (sample value)
        2 -- data_format_id: XML format (sample value)
    ),
    (
        1, -- status_type_id: active
        2, -- service_type_id: API 
        2, -- access_type_id: RSS 
        300, -- fetch_frequency: Fetch data every 5 minutes
        0, -- time_interval: Real-time data (0)
        NULL, -- next_fetch: Initially NULL, will be calculated automatically
        NULL, -- last_fetched: Initially NULL, will be updated on each fetch
        NULL, -- last_error_message:Initially no error, NULL
        2, -- access_method_id: Open access (sample value)
        2 -- data_format_id: XML format (sample value)
    ),
    (
        1, -- status_type_id: active
        2, -- service_type_id: API 
        2, -- access_type_id: RSS 
        300, -- fetch_frequency: Fetch data every 5 minutes
        0, -- time_interval: Real-time data (0)
        NULL, -- next_fetch: Initially NULL, will be calculated automatically
        NULL, -- last_fetched: Initially NULL, will be updated on each fetch
        NULL, -- last_error_message:Initially no error, NULL
        2, -- access_method_id: Open access (sample value)
        2 -- data_format_id: XML format (sample value)
    ),
    (
        1, -- status_type_id: active
        2, -- service_type_id: API 
        2, -- access_type_id: RSS 
        300, -- fetch_frequency: Fetch data every 5 minutes
        0, -- time_interval: Real-time data (0)
        NULL, -- next_fetch: Initially NULL, will be calculated automatically
        NULL, -- last_fetched: Initially NULL, will be updated on each fetch
        NULL, -- last_error_message:Initially no error, NULL
        2, -- access_method_id: Open access (sample value)
        2 -- data_format_id: XML format (sample value)
    ),
    (
        1, -- status_type_id: active
        2, -- service_type_id: API 
        2, -- access_type_id: RSS 
        300, -- fetch_frequency: Fetch data every 5 minutes
        0, -- time_interval: Real-time data (0)
        NULL, -- next_fetch: Initially NULL, will be calculated automatically
        NULL, -- last_fetched: Initially NULL, will be updated on each fetch
        NULL, -- last_error_message:Initially no error, NULL
        2, -- access_method_id: Open access (sample value)
        2 -- data_format_id: XML format (sample value)
    ),
    (
        1, -- status_type_id: active
        2, -- service_type_id: API 
        2, -- access_type_id: RSS 
        300, -- fetch_frequency: Fetch data every 5 minutes
        0, -- time_interval: Real-time data (0)
        NULL, -- next_fetch: Initially NULL, will be calculated automatically
        NULL, -- last_fetched: Initially NULL, will be updated on each fetch
        NULL, -- last_error_message:Initially no error, NULL
        2, -- access_method_id: Open access (sample value)
        2 -- data_format_id: XML format (sample value)
    ),
    (
        1, -- status_type_id: active
        2, -- service_type_id: API 
        2, -- access_type_id: RSS 
        300, -- fetch_frequency: Fetch data every 5 minutes
        0, -- time_interval: Real-time data (0)
        NULL, -- next_fetch: Initially NULL, will be calculated automatically
        NULL, -- last_fetched: Initially NULL, will be updated on each fetch
        NULL, -- last_error_message:Initially no error, NULL
        2, -- access_method_id: Open access (sample value)
        2 -- data_format_id: XML format (sample value)
    ),
    (
        1, -- status_type_id: active
        2, -- service_type_id: API 
        2, -- access_type_id: RSS 
        300, -- fetch_frequency: Fetch data every 5 minutes
        0, -- time_interval: Real-time data (0)
        NULL, -- next_fetch: Initially NULL, will be calculated automatically
        NULL, -- last_fetched: Initially NULL, will be updated on each fetch
        NULL, -- last_error_message:Initially no error, NULL
        2, -- access_method_id: Open access (sample value)
        2 -- data_format_id: XML format (sample value)
    ),
    (
        1, -- status_type_id: active
        2, -- service_type_id: API 
        2, -- access_type_id: RSS 
        300, -- fetch_frequency: Fetch data every 5 minutes
        0, -- time_interval: Real-time data (0)
        NULL, -- next_fetch: Initially NULL, will be calculated automatically
        NULL, -- last_fetched: Initially NULL, will be updated on each fetch
        NULL, -- last_error_message:Initially no error, NULL
        2, -- access_method_id: Open access (sample value)
        2 -- data_format_id: XML format (sample value)
    ),
    (
        1, -- status_type_id: active
        2, -- service_type_id: API 
        2, -- access_type_id: RSS 
        300, -- fetch_frequency: Fetch data every 5 minutes
        0, -- time_interval: Real-time data (0)
        NULL, -- next_fetch: Initially NULL, will be calculated automatically
        NULL, -- last_fetched: Initially NULL, will be updated on each fetch
        NULL, -- last_error_message:Initially no error, NULL
        2, -- access_method_id: Open access (sample value)
        2 -- data_format_id: XML format (sample value)
    ),
    (
        1, -- status_type_id: active
        2, -- service_type_id: API 
        2, -- access_type_id: RSS 
        300, -- fetch_frequency: Fetch data every 5 minutes
        0, -- time_interval: Real-time data (0)
        NULL, -- next_fetch: Initially NULL, will be calculated automatically
        NULL, -- last_fetched: Initially NULL, will be updated on each fetch
        NULL, -- last_error_message:Initially no error, NULL
        2, -- access_method_id: Open access (sample value)
        2 -- data_format_id: XML format (sample value)
    );