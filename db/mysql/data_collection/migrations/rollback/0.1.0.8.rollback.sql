-- ===================================================================================
-- @file: 0.1.0.8.rollback.sql
-- @version: 0.1.0.8
-- ===================================================================================
ALTER TABLE providers DROP FOREIGN KEY providers_status_types_FK;
ALTER TABLE measurements_of_providers DROP FOREIGN KEY measurements_of_providers_providers_FK;

ALTER TABLE platforms DROP FOREIGN KEY platforms_status_types_FK;
ALTER TABLE platform_provider DROP FOREIGN KEY platform_provider_platforms_FK;
ALTER TABLE platform_provider DROP FOREIGN KEY platform_provider_platforms_FK;
ALTER TABLE platform_provider DROP FOREIGN KEY platform_provider_providers_FK;
ALTER TABLE platform_parameters DROP FOREIGN KEY platform_parameters_platforms_FK;
ALTER TABLE platform_parameters DROP FOREIGN KEY platform_parameters_parameter_definitions_FK;
ALTER TABLE measurements_of_platforms DROP FOREIGN KEY measurements_of_platforms_platforms_FK;

ALTER TABLE services DROP FOREIGN KEY services_service_types_FK;
ALTER TABLE services DROP FOREIGN KEY services_access_types_FK;
ALTER TABLE services DROP FOREIGN KEY services_access_methods_FK;
ALTER TABLE services DROP FOREIGN KEY services_data_formats_FK;
ALTER TABLE services DROP FOREIGN KEY services_status_types_FK;

ALTER TABLE service_parameters DROP FOREIGN KEY service_parameters_services_FK;
ALTER TABLE service_parameters DROP FOREIGN KEY service_parameters_parameter_definitions_FK;
ALTER TABLE service_platform DROP FOREIGN KEY service_platform_services_FK;
ALTER TABLE service_platform DROP FOREIGN KEY service_platform_platforms_FK;
ALTER TABLE service_country DROP FOREIGN KEY service_country_services_FK;
ALTER TABLE service_country DROP FOREIGN KEY service_country_countries_FK;
ALTER TABLE service_language DROP FOREIGN KEY service_language_services_FK;
ALTER TABLE service_language DROP FOREIGN KEY service_language_languages_FK;
ALTER TABLE measurements_of_services DROP FOREIGN KEY measurements_of_services_services_FK;

COMMIT;