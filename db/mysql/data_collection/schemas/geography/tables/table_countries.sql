-- ====================================================================================================
-- file: table_countries.sql
-- purpose: To store a list of countries according to ISO 3166-1 alpha-2 standards.
-- ====================================================================================================
CREATE TABLE countries (
    country_id INT PRIMARY KEY COMMENT 'ISO 3166-1 Numeric country id',
    country_code CHAR(2) NOT NULL UNIQUE COMMENT 'ISO 3166-1 alpha-2 country code (e.g., ''US'', ''TR'')',
    alpha_3 CHAR(4) NOT NULL UNIQUE COMMENT 'ISO 3166-1 alpha-3 country code (e.g., ''USA'', ''TUR'')',
    country_name VARCHAR(255) NOT NULL COMMENT 'Full name of the country in English (e.g., ''Turkey'')',
    native_name VARCHAR(255) COMMENT 'Full name of the country in the local language (e.g., ''Türkiye'')',
    region VARCHAR(255) COMMENT 'Geographic region or continent where the country is located (e.g., ''Europe'', ''Asia'')'
) COMMENT 'Countries according to ISO standards';
-- ====================================================================================================
-- END OF FILE
-- ====================================================================================================