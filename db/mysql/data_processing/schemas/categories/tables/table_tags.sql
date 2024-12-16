-- ====================================================================================================
-- file: table_tags.sql
-- purpose: To define tags that are used in the data collection, processing, and analysis phases,
-- aligned with fundamental categories.
-- ====================================================================================================
CREATE TABLE tags (
    tag_id INT AUTO_INCREMENT PRIMARY KEY COMMENT 'Unique identifier for each tag; serves as the primary key for the table',
    tag_code VARCHAR(25) NOT NULL UNIQUE COMMENT 'Code of the tag (e.g., ''weather'', ''trends''); must be unique across all tags',
    tag_name VARCHAR(50) NOT NULL UNIQUE COMMENT 'Name of the tag (e.g., ''Weather'', ''Trends''); must be unique across all tags',
    tag_description VARCHAR(255) NULL DEFAULT NULL COMMENT 'Details describing the tag and its purpose; provides additional context on usage'
) COMMENT 'Tags';