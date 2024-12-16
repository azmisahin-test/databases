-- ====================================================================================================
-- file: table_data_processing_rules.sql
-- purpose: Insert initial data into the data_monitoring_log table
-- ====================================================================================================
CREATE TABLE data_processing_rules (
    rule_id INT PRIMARY KEY AUTO_INCREMENT,
    rule_type ENUM(
        'ingestion',
        'validation',
        'cleaning',
        'transformation',
        'storage',
        'monitoring'
    ) NOT NULL COMMENT '(e.g., cleaning, validation, transformation, ...)',
    rule_description TEXT COMMENT 'Explanation of the rule',
    rule_parameters JSON COMMENT 'Code or parameters defining the rule'
) COMMENT 'data_processing_rules';