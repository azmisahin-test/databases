-- ====================================================================================================
-- file: table_category_tags.sql
-- purpose: 
-- ====================================================================================================
CREATE TABLE category_tags (
    category_id INT NOT NULL COMMENT 'ID of the source, referencing sources table',
    tag_id INT NOT NULL COMMENT 'ID of the tag, referencing tags table'
) COMMENT 'Associates sources with one or more tags';