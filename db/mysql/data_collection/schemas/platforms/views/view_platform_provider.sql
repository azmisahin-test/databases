-- ====================================================================================================
-- File: view_platform_provider.sql
-- Purpose: Relationship view between Platforms and Providers with status information
-- ====================================================================================================
-- View Description:
-- This view joins the `platforms` and `providers` tables through the `platform_provider` relationship table.
-- It includes `status_types` for both platforms and providers, providing a readable status for each entity.
-- 
-- Usage Example:
-- To retrieve all active platforms and providers:
-- SELECT * FROM view_platform_provider WHERE platform_status = 'active' AND provider_status = 'active';
--
-- Note:
-- - Ensure that all referenced tables (`platform_provider`, `platforms`, `providers`, and `status_types`) 
--   exist in the database before creating this view.
-- ====================================================================================================

CREATE VIEW view_platform_provider AS
SELECT 
    -- Platform details
    p.platform_id,
    p.platform_code,
    p.platform_name,
    p.platform_description,
    st_platform.status_type_name AS platform_status,
    
    -- Provider details
    pr.provider_id,
    pr.provider_code,
    pr.provider_name,
    pr.provider_description,
    st_provider.status_type_name AS provider_status
FROM 
    platform_provider pp
JOIN 
    platforms p ON pp.platform_id = p.platform_id
JOIN 
    providers pr ON pp.provider_id = pr.provider_id
JOIN 
    status_types st_platform ON p.status_type_id = st_platform.status_type_id
JOIN 
    status_types st_provider ON pr.status_type_id = st_provider.status_type_id;

-- ====================================================================================================
-- End of File: view_platform_provider.sql
-- ====================================================================================================
