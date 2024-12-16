-- ====================================================================================================
-- file: table_service_platform.sql
-- purpose: Create service_platform table to link services with platforms
-- ====================================================================================================
CREATE TABLE service_platform (
    service_id INT NOT NULL COMMENT 'Unique identifier for the service',
    platform_id INT NOT NULL COMMENT 'Foreign key referencing the platforms table'
) COMMENT 'service_platform';