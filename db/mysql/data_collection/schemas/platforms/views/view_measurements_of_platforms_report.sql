-- ====================================================================================================
-- file: view_measurements_of_platforms_report.sql
-- purpose: Create a view for platform performance metrics.
-- ====================================================================================================
CREATE VIEW view_measurements_of_platforms_report AS
SELECT p.platform_id,
    -- Platform's unique identifier
    COUNT(pm.metric_id) AS total_calls -- Total number of API calls for each platform
FROM platforms p -- Main platform table
    JOIN measurements_of_platforms pm ON p.platform_id = pm.platform_id -- Join with platform metrics
GROUP BY p.platform_id;
-- Group by platform ID to aggregate metrics