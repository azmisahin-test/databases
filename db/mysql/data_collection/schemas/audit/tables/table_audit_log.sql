-- ====================================================================================================
-- file: table_audit_log.sql
-- purpose: To define a table for logging changes made to records in the database,
-- including the type of operation performed.
-- This log will help in tracking modifications and maintaining an audit trail for data integrity
-- and accountability.
-- ====================================================================================================
CREATE TABLE audit_log (
    log_id INT NOT NULL AUTO_INCREMENT COMMENT 'Unique identifier for each log entry',
    table_name VARCHAR(255) NOT NULL COMMENT 'The name of the table where the operation took place',
    operation ENUM('INSERT', 'UPDATE', 'DELETE') NOT NULL COMMENT 'Type of operation performed on the record',
    record_id INT NOT NULL COMMENT 'The unique identifier of the record that was modified',
    changed_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Timestamp of when the change was made',
    changed_by VARCHAR(255) NOT NULL COMMENT 'Identifier of the user or system that made the change',
    applied_by VARCHAR(255) COMMENT 'System records will be used since user identities are not stored',
    PRIMARY KEY (log_id)
);