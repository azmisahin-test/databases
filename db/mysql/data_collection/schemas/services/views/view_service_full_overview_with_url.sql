-- ====================================================================================================
-- File: view_service_full_overview_with_url.sql
-- Purpose: To create a comprehensive view combining service details with platform information and status.
-- ====================================================================================================

-- Drop the view if it exists
DROP VIEW IF EXISTS view_service_full_overview_with_url;

-- Create the new view
CREATE VIEW view_service_full_overview_with_url AS
SELECT 
    s.service_id,                      -- Unique identifier for the service
    st.service_type_name,              -- Name of the service type
    s.access_type_id,                  -- Identifier for access type
    at.access_type_name,               -- Name of the access type
    s.access_method_id,                -- Identifier for access method
    am.access_method_name,             -- Name of the access method
    s.status_type_id AS service_status_id,   -- Identifier for service status type
    st_service.status_type_name AS service_status, -- Name of the service status
    s.fetch_frequency,                 -- Frequency of data fetch
    s.time_interval,                   -- Time interval for service
    s.next_fetch,                      -- Next scheduled fetch
    s.last_fetched,                    -- Timestamp of last fetch
    s.last_error_message,              -- Error message from last fetch
    l.language_code,                   -- Language code from the languages table
    l.language_name,                   -- Full name of the language
    c.country_code,                    -- Country code from the countries table
    c.country_name,                    -- Full name of the country
    df.data_format_id,                 -- Data format ID from the data_formats table
    df.data_format_code,               -- Data format code from the data_formats table
    p.platform_id,                     -- Unique identifier for the platform
    p.platform_code,                   -- Platform code
    p.platform_name,                   -- Full name of the platform
    p.platform_description,            -- Description of the platform
    p.status_type_id AS platform_status_id,  -- Identifier for platform status type
    st_platform.status_type_name AS platform_status, -- Name of the platform status
    
    -- Generate full URL using platform parameters
    CONCAT(
        pp.parameter_value, '://',                           -- protocol
        COALESCE(pp_domain.parameter_value, ''),             -- domain
        COALESCE(pp_path.parameter_value, ''),               -- path
        CASE 
            WHEN pp_query.parameter_value IS NOT NULL THEN 
                CONCAT('?geo=', c.country_code)  -- Append geo with country_code
            ELSE '' 
        END
    ) AS full_url
FROM
    services s
    JOIN service_types st ON s.service_type_id = st.service_type_id
    JOIN access_types at ON s.access_type_id = at.access_type_id
    JOIN access_methods am ON s.access_method_id = am.access_method_id
    JOIN status_types st_service ON s.status_type_id = st_service.status_type_id
    JOIN service_language sl ON s.service_id = sl.service_id
    JOIN languages l ON sl.language_id = l.language_id
    JOIN service_country sc ON s.service_id = sc.service_id
    JOIN countries c ON sc.country_id = c.country_id
    JOIN data_formats df ON s.data_format_id = df.data_format_id
    LEFT JOIN service_platform sp ON s.service_id = sp.service_id    -- Left join to include services without platforms
    LEFT JOIN platforms p ON sp.platform_id = p.platform_id          -- Left join to include platforms
    LEFT JOIN status_types st_platform ON p.status_type_id = st_platform.status_type_id  -- Join with platform status types
    
    -- Fetch platform parameters (protocol, domain, path, query parameters)
    LEFT JOIN view_platform_parameters pp ON p.platform_id = pp.platform_id AND pp.parameter_name = 'protocol'
    LEFT JOIN view_platform_parameters pp_domain ON p.platform_id = pp_domain.platform_id AND pp_domain.parameter_name = 'domain'
    LEFT JOIN view_platform_parameters pp_path ON p.platform_id = pp_path.platform_id AND pp_path.parameter_name = 'path'
    LEFT JOIN view_platform_parameters pp_query ON p.platform_id = pp_query.platform_id AND pp_query.parameter_name = 'query_parameters';

-- ====================================================================================================
-- Materialized View Creation and Refresh Logic
-- ====================================================================================================

-- Drop the materialized view if it exists
DROP TABLE IF EXISTS mv_service_full_overview_with_url;

-- Create the materialized view
CREATE TABLE mv_service_full_overview_with_url AS
SELECT * FROM view_service_full_overview_with_url;

-- -- Populate the materialized view with initial data
-- TRUNCATE TABLE mv_service_full_overview_with_url;
-- INSERT INTO mv_service_full_overview_with_url
-- SELECT * FROM view_service_full_overview_with_url;

-- -- Set up an event to refresh the materialized view every 5 minutes
-- DROP EVENT IF EXISTS update_mv_service_full_overview_with_url;
-- CREATE EVENT update_mv_service_full_overview_with_url
-- ON SCHEDULE EVERY 5 MINUTE
-- DO
-- BEGIN
--     TRUNCATE TABLE mv_service_full_overview_with_url;  -- Clear the existing data
--     INSERT INTO mv_service_full_overview_with_url      -- Insert the latest data
--     SELECT * FROM view_service_full_overview_with_url;
-- END;

-- ====================================================================================================
-- End of File: view_service_full_overview_with_url.sql
-- ====================================================================================================
