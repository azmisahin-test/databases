-- ===================================================================================
-- @file: 0.2.0.4.sql
-- @purpose: FOREIGN KEY
-- @dependencies: 0.2.0.3.sql
-- @description: tables FOREIGN KEY and REFERENCES
-- ===================================================================================
ALTER TABLE category_services ADD CONSTRAINT category_services_categories_FK FOREIGN KEY (category_id) REFERENCES categories (category_id);
-- ALTER TABLE category_services ADD CONSTRAINT category_services_services_FK FOREIGN KEY (service_id) REFERENCES services (service_id);
ALTER TABLE category_services ADD CONSTRAINT category_services_data_schemas_FK FOREIGN KEY (data_schema_id) REFERENCES data_schemas (data_schema_id);
ALTER TABLE data_schemas ADD CONSTRAINT data_schemas_data_schema_types_FK FOREIGN KEY (data_schema_type_id) REFERENCES data_schema_types (data_schema_type_id);
ALTER TABLE category_tags ADD CONSTRAINT category_tags_categories_FK FOREIGN KEY (category_id) REFERENCES categories (category_id);
ALTER TABLE category_tags ADD CONSTRAINT category_tags_tags_FK FOREIGN KEY (tag_id) REFERENCES tags (tag_id);
ALTER TABLE categories ADD CONSTRAINT categories_categories_FK FOREIGN KEY (category_parent_id) REFERENCES categories (category_id);
COMMIT;
