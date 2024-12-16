-- ===================================================================================
-- @file: 0.1.0.8.sql
-- @purpose: providers, platforms, services
-- @dependencies: 0.1.0.7.sql
-- @description: tables FOREIGN KEY and REFERENCES
-- ===================================================================================
ALTER TABLE providers ADD CONSTRAINT providers_status_types_FK FOREIGN KEY (status_type_id) REFERENCES status_types(status_type_id);
ALTER TABLE measurements_of_providers ADD CONSTRAINT measurements_of_providers_providers_FK FOREIGN KEY (provider_id) REFERENCES providers (provider_id);

ALTER TABLE platforms ADD CONSTRAINT platforms_status_types_FK FOREIGN KEY (status_type_id) REFERENCES status_types(status_type_id);
ALTER TABLE platform_provider ADD CONSTRAINT platform_provider_platforms_FK FOREIGN KEY (platform_id) REFERENCES platforms (platform_id);
ALTER TABLE platform_provider ADD CONSTRAINT platform_provider_providers_FK FOREIGN KEY (provider_id) REFERENCES providers (provider_id);
ALTER TABLE platform_parameters ADD CONSTRAINT platform_parameters_platforms_FK FOREIGN KEY (platform_id) REFERENCES platforms(platform_id);
ALTER TABLE platform_parameters ADD CONSTRAINT platform_parameters_parameter_definitions_FK FOREIGN KEY (parameter_definition_id) REFERENCES parameter_definitions(parameter_definition_id);
ALTER TABLE measurements_of_platforms ADD CONSTRAINT measurements_of_platforms_platforms_FK FOREIGN KEY (platform_id) REFERENCES platforms (platform_id);

ALTER TABLE services ADD CONSTRAINT services_service_types_FK FOREIGN KEY (service_type_id) REFERENCES service_types (service_type_id);
ALTER TABLE services ADD CONSTRAINT services_access_types_FK FOREIGN KEY (access_type_id) REFERENCES access_types (access_type_id);
ALTER TABLE services ADD CONSTRAINT services_access_methods_FK FOREIGN KEY (access_method_id) REFERENCES access_methods (access_method_id);
ALTER TABLE services ADD CONSTRAINT services_data_formats_FK FOREIGN KEY (data_format_id) REFERENCES data_formats (data_format_id);
ALTER TABLE services ADD CONSTRAINT services_status_types_FK FOREIGN KEY (status_type_id) REFERENCES status_types(status_type_id);

ALTER TABLE service_parameters ADD CONSTRAINT service_parameters_services_FK FOREIGN KEY (service_id) REFERENCES services (service_id);
ALTER TABLE service_parameters ADD CONSTRAINT service_parameters_parameter_definitions_FK FOREIGN KEY (parameter_definition_id) REFERENCES parameter_definitions (parameter_definition_id);
ALTER TABLE service_platform ADD CONSTRAINT service_platform_services_FK FOREIGN KEY (service_id) REFERENCES services (service_id);
ALTER TABLE service_platform ADD CONSTRAINT service_platform_platforms_FK FOREIGN KEY (platform_id) REFERENCES platforms (platform_id);
ALTER TABLE service_country ADD CONSTRAINT service_country_services_FK FOREIGN KEY (service_id) REFERENCES services (service_id);
ALTER TABLE service_country ADD CONSTRAINT service_country_countries_FK FOREIGN KEY (country_id) REFERENCES countries (country_id);
ALTER TABLE service_language ADD CONSTRAINT service_language_services_FK FOREIGN KEY (service_id) REFERENCES services (service_id);
ALTER TABLE service_language ADD CONSTRAINT service_language_languages_FK FOREIGN KEY (language_id) REFERENCES languages (language_id);
ALTER TABLE measurements_of_services ADD CONSTRAINT measurements_of_services_services_FK FOREIGN KEY (service_id) REFERENCES services (service_id);

COMMIT;
