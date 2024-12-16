-- ====================================================================================================
-- file: table_service_country.sql
-- purpose: 
-- ====================================================================================================
CREATE TABLE service_country (
    service_id INT NOT NULL COMMENT 'Reference to services.',
    country_id INT NOT NULL COMMENT 'Reference to countries. ISO 3166-1 Numeric country id'
) COMMENT 'Associates each service with specific countries.';