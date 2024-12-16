-- ====================================================================================================
-- File: view_platform_parameters.sql
-- Purpose: View to show platforms along with their defined parameters and descriptions
-- ====================================================================================================
-- View Description:
-- This view joins `platforms`, `parameter_definitions`, and `platform_parameters` tables to provide a 
-- comprehensive list of parameters for each platform, including parameter name, type, value, and requirement.
--
-- Usage:
-- SELECT * FROM view_platform_parameters WHERE platform_code = 'google_trends';
-- This query fetches all parameters associated with the Google Trends platform.
-- ====================================================================================================

CREATE VIEW view_platform_parameters AS
SELECT 
    p.platform_id,
    p.platform_code,
    p.platform_name,
    p.platform_description,
    p.status_type_id,
    pd.parameter_definition_id,
    pd.parameter_name,
    pd.parameter_type,
    pd.description AS parameter_description,
    pp.parameter_value,
    pp.is_required
FROM 
    platforms p
JOIN 
    platform_parameters pp ON p.platform_id = pp.platform_id
JOIN 
    parameter_definitions pd ON pp.parameter_definition_id = pd.parameter_definition_id;

-- ====================================================================================================
-- End of File: view_platform_parameters.sql
-- ====================================================================================================
