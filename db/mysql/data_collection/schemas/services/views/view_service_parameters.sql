-- ====================================================================================================
-- File: view_service_parameters.sql
-- Purpose: View to show services along with their defined parameters, types, descriptions, and values
-- ====================================================================================================
-- View Description:
-- This view joins `services`, `service_parameters`, and `parameter_definitions` tables to provide a 
-- detailed list of parameters for each service, including parameter name, type, value, requirement, and 
-- other configuration settings.
--
-- Usage:
-- SELECT * FROM view_service_parameters WHERE service_id = 1;
-- This query fetches all parameters associated with the specified service ID.
-- ====================================================================================================

-- Drop the view if it exists
DROP VIEW IF EXISTS view_service_parameters;

CREATE VIEW view_service_parameters AS
SELECT 
    s.service_id,
    s.status_type_id,
    s.service_type_id,
    s.access_type_id,
    s.fetch_frequency,
    s.time_interval,
    s.next_fetch,
    s.last_fetched,
    s.last_error_message,
    s.access_method_id,
    s.data_format_id,
    pd.parameter_definition_id,
    pd.parameter_name,
    pd.parameter_type,
    pd.description AS parameter_description,
    sp.parameter_value,
    sp.is_required
FROM 
    services s
JOIN 
    service_parameters sp ON s.service_id = sp.service_id
JOIN 
    parameter_definitions pd ON sp.parameter_definition_id = pd.parameter_definition_id;

-- ====================================================================================================
-- End of File: view_service_parameters.sql
-- ====================================================================================================
