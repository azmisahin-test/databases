-- ====================================================================================================
-- file: table_measurements_of_providers.sql
-- purpose: To store metrics for various providers
-- ====================================================================================================
CREATE TABLE measurements_of_providers (
    metric_id INT AUTO_INCREMENT PRIMARY KEY COMMENT 'Unique identifier for each metric measurement',
    provider_id INT NOT NULL COMMENT 'References the provider table',
    measurement_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT 'Timestamp when the measurement was taken.',
    measurement_start_time TIMESTAMP COMMENT 'Timestamp when the processes started.',
    measurement_end_time TIMESTAMP COMMENT 'Timestamp when the processes ended.',
    metric_type ENUM(
        'performance',
        'usage',
        'error_rate',
        'engagement',
        'traffic',
        'conversion'
    ) NOT NULL COMMENT 'Type of the metric being recorded',
    metric_value DECIMAL(10, 2) NOT NULL COMMENT 'Value of the metric being measured (e.g., service usage, performance score)',
    UNIQUE KEY idx_unique_provider_time (provider_id, measurement_time)
);