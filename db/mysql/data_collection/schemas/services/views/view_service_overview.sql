-- ====================================================================================================
-- File: view_service_overview.sql
-- Purpose: To create a comprehensive view of service details, including type, access methods, status, country, language, and data format.
-- ====================================================================================================

-- View Description:
-- The view combines information from the services table with related service types, access types, access methods,
-- status types, languages, countries, and data formats. It provides a consolidated overview of each service's characteristics,
-- making it easier to track their statuses and configurations.

-- Usage:
-- This view can be queried like a regular table to obtain a detailed overview of all services in the system.
-- SELECT * FROM view_service_overview;
-- ====================================================================================================

-- Drop the view if it exists
DROP VIEW IF EXISTS view_service_overview;

-- Create the view
CREATE VIEW view_service_overview AS
SELECT 
    s.service_id,                    -- Unique identifier for the service
    st.service_type_name,            -- Name of the service type
    s.access_type_id,                -- Identifier for access type
    at.access_type_name,             -- Name of the access type
    s.access_method_id,              -- Identifier for access method
    am.access_method_name,           -- Name of the access method
    s.status_type_id,                -- Identifier for status type
    stt.status_type_name,            -- Name of the status type
    s.fetch_frequency,               -- Frequency of data fetch
    s.time_interval,                 -- Time interval for service
    s.next_fetch,                    -- Next scheduled fetch
    s.last_fetched,                  -- Timestamp of last fetch
    s.last_error_message,            -- Error message from last fetch
    l.language_code,                 -- Language code from the languages table
    l.language_name,                 -- Full name of the language
    c.country_code,                  -- Country code from the countries table
    c.country_name,                  -- Full name of the country
    df.data_format_id,               -- Data format ID from the data_formats table
    df.data_format_code               -- Data format code from the data_formats table
FROM
    services s
    JOIN service_types st ON s.service_type_id = st.service_type_id
    JOIN access_types at ON s.access_type_id = at.access_type_id
    JOIN access_methods am ON s.access_method_id = am.access_method_id
    JOIN status_types stt ON s.status_type_id = stt.status_type_id
    JOIN service_language sl ON s.service_id = sl.service_id        -- Join with service_language
    JOIN languages l ON sl.language_id = l.language_id              -- Join with languages
    JOIN service_country sc ON s.service_id = sc.service_id         -- Join with service_country
    JOIN countries c ON sc.country_id = c.country_id                -- Join with countries
    JOIN data_formats df ON s.data_format_id = df.data_format_id;  -- Join with data_formats

-- ====================================================================================================
-- End of File: view_service_overview.sql
-- ====================================================================================================
