-- ====================================================================================================
-- file: table_languages.sql
-- purpose: To store a list of languages according to ISO 639-1 standards.
-- ====================================================================================================
CREATE TABLE languages (
    language_id INT PRIMARY KEY NOT NULL COMMENT 'ISO 639-1 language code',
    language_code CHAR(2) NOT NULL UNIQUE COMMENT 'Unique ISO 639-1 two-letter language code (e.g., ''EN'', ''TR'', ''CN'')',
    alpha_3_code CHAR(4) NOT NULL UNIQUE COMMENT 'ISO 639-2 or ISO 639-3 three-letter language code (e.g., ''ENG'', ''TUR'')',
    language_name VARCHAR(50) NOT NULL COMMENT 'Full name of the language (e.g., ''English'', ''Turkish'')',
    native_name VARCHAR(50) COMMENT 'Native name of the language (e.g., ''English'', ''Türkçe'')'
) COMMENT 'Languages';
-- ====================================================================================================
-- END OF FILE
-- ====================================================================================================