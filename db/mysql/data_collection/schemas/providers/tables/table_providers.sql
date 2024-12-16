-- ====================================================================================================
-- file: table_providers.sql
-- purpose: To store information about providers of services or resources, including companies,
-- organizations, or individuals.
-- This table serves as a reference for tracking various service providers and their offerings.
-- ====================================================================================================
CREATE TABLE providers (
    provider_id INT AUTO_INCREMENT PRIMARY KEY COMMENT 'Unique identifier for each provider; serves as the primary key for the table',
    provider_code VARCHAR(20) UNIQUE NOT NULL COMMENT 'Unique code for each  (google_llc, open_meteo_gmbh, ... )',
    provider_name VARCHAR(50) NOT NULL UNIQUE COMMENT 'Name of the provider; must be unique to avoid duplication in the database',
    provider_description VARCHAR(255) DEFAULT NULL COMMENT 'Description of the services or resources provided by the provider; offers context about the provider’s offerings and capabilities',
    status_type_id INT NOT NULL DEFAULT 1 COMMENT '1: active, 2: inactive, 3: maintenance, 4: under_review, 5: suspended, ...; from status_types '
) COMMENT 'Providers';