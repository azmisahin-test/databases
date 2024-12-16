-- ====================================================================================================
-- file: view_measurements_of_providers_report.sql
-- purpose: Create a view for provider performance metrics.
-- ====================================================================================================
CREATE VIEW view_measurements_of_providers_report AS
SELECT p.provider_id,
    -- Providers's unique identifier
    COUNT(pm.metric_id) AS total_calls -- Total number of API calls for each provider
FROM providers p -- Main providers table
    JOIN measurements_of_providers pm ON p.provider_id = pm.provider_id -- Join with provider metrics
GROUP BY p.provider_id;
-- Group by platform ID to aggregate metrics