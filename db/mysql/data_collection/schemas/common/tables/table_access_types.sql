-- ====================================================================================================
-- file: table_access_types.sql
-- purpose: To define the subcategories of access types for various data sources.
-- ====================================================================================================
CREATE TABLE access_types (
    access_type_id INT PRIMARY KEY AUTO_INCREMENT,
    access_type_code VARCHAR(20) UNIQUE NOT NULL COMMENT 'Unique code for each type (api, rss, html, influxdb, elasticsearch, mysql, mongo, postgresql, ... )',
    access_type_name VARCHAR(50) NOT NULL UNIQUE COMMENT 'Name of the type (API, RSS, HTML, Influx Database, Elasticsearch, MySql, Mongo Database, Postgresql Database, ... )',
    access_type_description VARCHAR(255) NULL DEFAULT NULL COMMENT 'Detailed description for type'
) COMMENT 'Access Types';