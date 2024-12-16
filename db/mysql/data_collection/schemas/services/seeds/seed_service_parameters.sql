-- ====================================================================================================
-- file: seed_service_parameters.sql
-- purpose: Insert
-- ====================================================================================================
-- Example
INSERT INTO service_parameters (service_id, parameter_definition_id, parameter_value, is_required)
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
INSERT INTO service_parameters (service_id, parameter_definition_id, parameter_value, is_required)
VALUES
    (2, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'protocol'), 'https', true),
    (2, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'domain'), 'trends.google.com', true),
    (2, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'port'), '443', true),
    (2, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'path'), '/trending/rss', true),
    (2, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'query_parameters'), '{"geo": "CN"}', false),
    (2, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'request_method'), 'GET', true),
    (2, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'rate_limit'), '100', true),
    (2, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'rate_limit_window'), '60', true),
    (2, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'timeout'), '30', true),
    (2, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'retry_count'), '3', true),
    (2, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'cache_duration'), '3600', false),
    (2, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'cache_enabled'), 'true', true),
    (2, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'max_connections'), '5', true),
    (2, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'api_key'), 'your_api_key', false),
    (2, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'logging_enabled'), 'true', true),
    (2, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'allowed_origins'), 'example.com', false),
    (2, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'error_handling'), 'retry', true),
    (2, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'authentication_required'), 'true', true),
    (2, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'authentication_details'), '{"type": "API Key", "location": "header", "required": true}', false);
INSERT INTO service_parameters (service_id, parameter_definition_id, parameter_value, is_required)
VALUES
    (3, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'protocol'), 'https', true),
    (3, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'domain'), 'trends.google.com', true),
    (3, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'port'), '443', true),
    (3, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'path'), '/trending/rss', true),
    (3, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'query_parameters'), '{"geo": "JP"}', false),
    (3, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'request_method'), 'GET', true),
    (3, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'rate_limit'), '100', true),
    (3, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'rate_limit_window'), '60', true),
    (3, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'timeout'), '30', true),
    (3, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'retry_count'), '3', true),
    (3, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'cache_duration'), '3600', false),
    (3, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'cache_enabled'), 'true', true),
    (3, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'max_connections'), '5', true),
    (3, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'api_key'), 'your_api_key', false),
    (3, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'logging_enabled'), 'true', true),
    (3, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'allowed_origins'), 'example.com', false),
    (3, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'error_handling'), 'retry', true),
    (3, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'authentication_required'), 'true', true),
    (3, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'authentication_details'), '{"type": "API Key", "location": "header", "required": true}', false);
INSERT INTO service_parameters (service_id, parameter_definition_id, parameter_value, is_required)
VALUES
    (4, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'protocol'), 'https', true),
    (4, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'domain'), 'trends.google.com', true),
    (4, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'port'), '443', true),
    (4, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'path'), '/trending/rss', true),
    (4, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'query_parameters'), '{"geo": "KR"}', false),
    (4, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'request_method'), 'GET', true),
    (4, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'rate_limit'), '100', true),
    (4, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'rate_limit_window'), '60', true),
    (4, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'timeout'), '30', true),
    (4, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'retry_count'), '3', true),
    (4, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'cache_duration'), '3600', false),
    (4, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'cache_enabled'), 'true', true),
    (4, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'max_connections'), '5', true),
    (4, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'api_key'), 'your_api_key', false),
    (4, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'logging_enabled'), 'true', true),
    (4, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'allowed_origins'), 'example.com', false),
    (4, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'error_handling'), 'retry', true),
    (4, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'authentication_required'), 'true', true),
    (4, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'authentication_details'), '{"type": "API Key", "location": "header", "required": true}', false);
INSERT INTO service_parameters (service_id, parameter_definition_id, parameter_value, is_required)
VALUES
    (5, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'protocol'), 'https', true),
    (5, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'domain'), 'trends.google.com', true),
    (5, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'port'), '443', true),
    (5, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'path'), '/trending/rss', true),
    (5, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'query_parameters'), '{"geo": "IN"}', false),
    (5, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'request_method'), 'GET', true),
    (5, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'rate_limit'), '100', true),
    (5, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'rate_limit_window'), '60', true),
    (5, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'timeout'), '30', true),
    (5, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'retry_count'), '3', true),
    (5, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'cache_duration'), '3600', false),
    (5, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'cache_enabled'), 'true', true),
    (5, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'max_connections'), '5', true),
    (5, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'api_key'), 'your_api_key', false),
    (5, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'logging_enabled'), 'true', true),
    (5, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'allowed_origins'), 'example.com', false),
    (5, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'error_handling'), 'retry', true),
    (5, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'authentication_required'), 'true', true),
    (5, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'authentication_details'), '{"type": "API Key", "location": "header", "required": true}', false);
INSERT INTO service_parameters (service_id, parameter_definition_id, parameter_value, is_required)
VALUES
    (6, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'protocol'), 'https', true),
    (6, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'domain'), 'trends.google.com', true),
    (6, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'port'), '443', true),
    (6, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'path'), '/trending/rss', true),
    (6, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'query_parameters'), '{"geo": "BR"}', false),
    (6, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'request_method'), 'GET', true),
    (6, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'rate_limit'), '100', true),
    (6, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'rate_limit_window'), '60', true),
    (6, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'timeout'), '30', true),
    (6, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'retry_count'), '3', true),
    (6, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'cache_duration'), '3600', false),
    (6, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'cache_enabled'), 'true', true),
    (6, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'max_connections'), '5', true),
    (6, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'api_key'), 'your_api_key', false),
    (6, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'logging_enabled'), 'true', true),
    (6, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'allowed_origins'), 'example.com', false),
    (6, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'error_handling'), 'retry', true),
    (6, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'authentication_required'), 'true', true),
    (6, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'authentication_details'), '{"type": "API Key", "location": "header", "required": true}', false);
INSERT INTO service_parameters (service_id, parameter_definition_id, parameter_value, is_required)
VALUES
    (7, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'protocol'), 'https', true),
    (7, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'domain'), 'trends.google.com', true),
    (7, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'port'), '443', true),
    (7, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'path'), '/trending/rss', true),
    (7, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'query_parameters'), '{"geo": "DE"}', false),
    (7, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'request_method'), 'GET', true),
    (7, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'rate_limit'), '100', true),
    (7, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'rate_limit_window'), '60', true),
    (7, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'timeout'), '30', true),
    (7, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'retry_count'), '3', true),
    (7, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'cache_duration'), '3600', false),
    (7, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'cache_enabled'), 'true', true),
    (7, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'max_connections'), '5', true),
    (7, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'api_key'), 'your_api_key', false),
    (7, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'logging_enabled'), 'true', true),
    (7, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'allowed_origins'), 'example.com', false),
    (7, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'error_handling'), 'retry', true),
    (7, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'authentication_required'), 'true', true),
    (7, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'authentication_details'), '{"type": "API Key", "location": "header", "required": true}', false);
INSERT INTO service_parameters (service_id, parameter_definition_id, parameter_value, is_required)
VALUES
    (8, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'protocol'), 'https', true),
    (8, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'domain'), 'trends.google.com', true),
    (8, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'port'), '443', true),
    (8, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'path'), '/trending/rss', true),
    (8, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'query_parameters'), '{"geo": "UK"}', false),
    (8, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'request_method'), 'GET', true),
    (8, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'rate_limit'), '100', true),
    (8, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'rate_limit_window'), '60', true),
    (8, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'timeout'), '30', true),
    (8, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'retry_count'), '3', true),
    (8, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'cache_duration'), '3600', false),
    (8, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'cache_enabled'), 'true', true),
    (8, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'max_connections'), '5', true),
    (8, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'api_key'), 'your_api_key', false),
    (8, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'logging_enabled'), 'true', true),
    (8, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'allowed_origins'), 'example.com', false),
    (8, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'error_handling'), 'retry', true),
    (8, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'authentication_required'), 'true', true),
    (8, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'authentication_details'), '{"type": "API Key", "location": "header", "required": true}', false);
INSERT INTO service_parameters (service_id, parameter_definition_id, parameter_value, is_required)
VALUES
    (9, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'protocol'), 'https', true),
    (9, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'domain'), 'trends.google.com', true),
    (9, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'port'), '443', true),
    (9, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'path'), '/trending/rss', true),
    (9, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'query_parameters'), '{"geo": "FR"}', false),
    (9, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'request_method'), 'GET', true),
    (9, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'rate_limit'), '100', true),
    (9, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'rate_limit_window'), '60', true),
    (9, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'timeout'), '30', true),
    (9, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'retry_count'), '3', true),
    (9, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'cache_duration'), '3600', false),
    (9, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'cache_enabled'), 'true', true),
    (9, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'max_connections'), '5', true),
    (9, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'api_key'), 'your_api_key', false),
    (9, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'logging_enabled'), 'true', true),
    (9, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'allowed_origins'), 'example.com', false),
    (9, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'error_handling'), 'retry', true),
    (9, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'authentication_required'), 'true', true),
    (9, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'authentication_details'), '{"type": "API Key", "location": "header", "required": true}', false);
INSERT INTO service_parameters (service_id, parameter_definition_id, parameter_value, is_required)
VALUES
    (10, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'protocol'), 'https', true),
    (10, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'domain'), 'trends.google.com', true),
    (10, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'port'), '443', true),
    (10, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'path'), '/trending/rss', true),
    (10, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'query_parameters'), '{"geo": "RU"}', false),
    (10, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'request_method'), 'GET', true),
    (10, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'rate_limit'), '100', true),
    (10, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'rate_limit_window'), '60', true),
    (10, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'timeout'), '30', true),
    (10, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'retry_count'), '3', true),
    (10, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'cache_duration'), '3600', false),
    (10, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'cache_enabled'), 'true', true),
    (10, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'max_connections'), '5', true),
    (10, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'api_key'), 'your_api_key', false),
    (10, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'logging_enabled'), 'true', true),
    (10, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'allowed_origins'), 'example.com', false),
    (10, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'error_handling'), 'retry', true),
    (10, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'authentication_required'), 'true', true),
    (10, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'authentication_details'), '{"type": "API Key", "location": "header", "required": true}', false);

INSERT INTO service_parameters (service_id, parameter_definition_id, parameter_value, is_required)
VALUES
    (11, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'protocol'), 'https', true),
    (11, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'domain'), 'trends.google.com', true),
    (11, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'port'), '443', true),
    (11, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'path'), '/trending/rss', true),
    (11, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'query_parameters'), '{"geo": "AU"}', false),
    (11, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'request_method'), 'GET', true),
    (11, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'rate_limit'), '100', true),
    (11, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'rate_limit_window'), '60', true),
    (11, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'timeout'), '30', true),
    (11, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'retry_count'), '3', true),
    (11, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'cache_duration'), '3600', false),
    (11, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'cache_enabled'), 'true', true),
    (11, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'max_connections'), '5', true),
    (11, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'api_key'), 'your_api_key', false),
    (11, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'logging_enabled'), 'true', true),
    (11, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'allowed_origins'), 'example.com', false),
    (11, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'error_handling'), 'retry', true),
    (11, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'authentication_required'), 'true', true),
    (11, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'authentication_details'), '{"type": "API Key", "location": "header", "required": true}', false); 

INSERT INTO service_parameters (service_id, parameter_definition_id, parameter_value, is_required)
VALUES
    (12, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'protocol'), 'https', true),
    (12, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'domain'), 'trends.google.com', true),
    (12, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'port'), '443', true),
    (12, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'path'), '/trending/rss', true),
    (12, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'query_parameters'), '{"geo": "TR"}', false),
    (12, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'request_method'), 'GET', true),
    (12, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'rate_limit'), '100', true),
    (12, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'rate_limit_window'), '60', true),
    (12, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'timeout'), '30', true),
    (12, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'retry_count'), '3', true),
    (12, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'cache_duration'), '3600', false),
    (12, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'cache_enabled'), 'true', true),
    (12, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'max_connections'), '5', true),
    (12, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'api_key'), 'your_api_key', false),
    (12, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'logging_enabled'), 'true', true),
    (12, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'allowed_origins'), 'example.com', false),
    (12, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'error_handling'), 'retry', true),
    (12, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'authentication_required'), 'true', true),
    (12, (SELECT parameter_definition_id FROM parameter_definitions WHERE parameter_name = 'authentication_details'), '{"type": "API Key", "location": "header", "required": true}', false);       