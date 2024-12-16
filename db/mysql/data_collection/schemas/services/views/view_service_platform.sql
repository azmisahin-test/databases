-- ====================================================================================================
-- File: view_service_platform.sql
-- Purpose: Relational view combining services and platforms with status details
-- ====================================================================================================
-- View Description:
-- This view joins `services`, `platforms`, and `service_platform` tables to show the relationship between
-- services and platforms, including status information for each. It also incorporates data from the 
-- `status_types` table to display the status of each service and platform.
--
-- Usage:
-- SELECT * FROM view_service_platform WHERE service_status = 'active' AND platform_status = 'active';
-- This query fetches all active services on active platforms.
-- ====================================================================================================

-- Drop the view if it exists
DROP VIEW IF EXISTS view_service_platform;

CREATE VIEW view_service_platform AS
SELECT 
    s.service_id,
    s.status_type_id AS service_status_id,
    st_service.status_type_name AS service_status,
    s.service_type_id,
    s.access_type_id,
    s.fetch_frequency,
    s.time_interval,
    s.next_fetch,
    s.last_fetched,
    s.last_error_message,
    s.access_method_id,
    s.data_format_id,
    p.platform_id,
    p.platform_code,
    p.platform_name,
    p.platform_description,
    p.status_type_id AS platform_status_id,
    st_platform.status_type_name AS platform_status
FROM 
    service_platform sp
JOIN 
    services s ON sp.service_id = s.service_id
JOIN 
    platforms p ON sp.platform_id = p.platform_id
JOIN 
    status_types st_service ON s.status_type_id = st_service.status_type_id
JOIN 
    status_types st_platform ON p.status_type_id = st_platform.status_type_id;

-- ====================================================================================================
-- End of File: view_service_platform.sql
-- ====================================================================================================
