-- ====================================================================================================
-- file: seed_parameter_definitions.sql
-- purpose: Insert initial data into the parameter_definitions table
-- ====================================================================================================
INSERT INTO parameter_definitions (parameter_name, parameter_type, description)
VALUES
    ('protocol', 'string', 'Protocol to be used for the service'),
    ('domain', 'string', 'Domain name of the service'),
    ('port', 'integer', 'Port to be used for the service'),
    ('path', 'string', 'Path to the specific service endpoint'),
    ('query_parameters', 'json', 'Query parameters for the service'),
    ('request_method', 'string', 'HTTP request method'),
    ('rate_limit', 'integer', 'Rate limiting for API services; specifies the maximum number of requests allowed'),
    ('rate_limit_window', 'integer', 'Time window (in seconds) for the rate limit'),
    ('timeout', 'integer', 'Timeout duration in seconds'),
    ('retry_count', 'integer', 'Maximum number of retry attempts'),
    ('cache_duration', 'integer', 'Duration for which the response should be cached'),
    ('cache_enabled', 'boolean', 'Indicates if caching is enabled'),
    ('max_connections', 'integer', 'Maximum number of connections allowed'),
    ('api_key', 'string', 'API key for accessing the service'),
    ('logging_enabled', 'boolean', 'Indicates if logging is enabled'),
    ('allowed_origins', 'string', 'Allowed origins for CORS'),
    ('error_handling', 'string', 'Strategy for handling errors'),
    ('authentication_required', 'boolean', 'Indicates if authentication is required'),
    ('authentication_details', 'json', 'Details about authentication methods');
