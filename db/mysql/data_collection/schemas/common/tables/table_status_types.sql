-- ====================================================================================================
-- file: table_status_types.sql
-- purpose: To define status codes that express the state of an object, record, or system component.
-- This table defines status types used across the system to categorize the states of records and components.
-- Status types can indicate various conditions such as 'Active', 'Inactive', 'Pending', etc.
-- ====================================================================================================
CREATE TABLE status_types (
    status_type_id INT PRIMARY KEY AUTO_INCREMENT COMMENT 'Unique identifier for the status type',
    status_type_code VARCHAR(20) UNIQUE NOT NULL COMMENT 'Unique code for each status type',
    status_type_name VARCHAR(50) NOT NULL COMMENT 'Name of the status type',
    status_type_description VARCHAR(255) NOT NULL COMMENT 'Description of the status type'
) COMMENT 'Status Types';