-- ====================================================================================================
-- file: table_service_language.sql
-- purpose: 
-- ====================================================================================================
CREATE TABLE service_language (
    service_id INT NOT NULL COMMENT 'Reference to services',
    language_id INT NOT NULL COMMENT 'Reference to languages'
) COMMENT 'Associates each service with specific languages.';