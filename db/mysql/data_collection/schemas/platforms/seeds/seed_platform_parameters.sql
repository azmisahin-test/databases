-- ====================================================================================================
-- file: seed_platform_parameters.sql
-- purpose: Insert initial data into the platform_parameters table
-- ====================================================================================================
-- Example
INSERT INTO platform_parameters (platform_id, parameter_definition_id, parameter_value, is_required)
VALUES
    (1, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'protocol'), 'https', true),
    (1, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'domain'), 'trends.google.com', true),
    (1, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'port'), '443', true),
    (1, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'path'), '/trending/rss', true),
    (1, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'query_parameters'), '{"geo": "US"}', false),
    (1, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'request_method'), 'GET', true),
    (1, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'rate_limit'), '100', true),
    (1, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'rate_limit_window'), '60', true),
    (1, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'timeout'), '30', true),
    (1, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'retry_count'), '3', true),
    (1, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'cache_duration'), '3600', false),
    (1, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'cache_enabled'), 'true', true),
    (1, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'max_connections'), '5', true),
    (1, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'api_key'), 'your_api_key', false),
    (1, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'logging_enabled'), 'true', true),
    (1, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'allowed_origins'), 'example.com', false),
    (1, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'error_handling'), 'retry', true),
    (1, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'authentication_required'), 'true', true),
    (1, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'authentication_details'), '{"type": "API Key", "location": "header", "required": true}', false);
