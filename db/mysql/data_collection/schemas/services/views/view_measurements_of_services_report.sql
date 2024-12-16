-- ====================================================================================================
-- file: view_measurements_of_services_report.sql
-- purpose: Create a view for service performance metrics.
-- ====================================================================================================
CREATE VIEW view_measurements_of_services_report AS
SELECT s.service_id,
    -- Service's unique identifier
    COUNT(sm.metric_id) AS total_calls -- Total number of API calls for each service
FROM services s -- Main services table
    JOIN measurements_of_services sm ON s.service_id = sm.service_id -- Join with service metrics
GROUP BY s.service_id;
-- Group by service ID to aggregate metrics