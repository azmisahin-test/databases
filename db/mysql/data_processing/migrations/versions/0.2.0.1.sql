-- ===================================================================================
-- @file: 0.2.0.1.sql
-- @version: 0.2.0.1
-- @author: Quanteon
-- @created: 2024-11-05
-- @dependencies: None
-- @purpose: initial migration for setting up migration tracking
-- @description: sets up the initial structure to track the history of migrations
-- ===================================================================================
CREATE TABLE IF NOT EXISTS _migration_history (
    id INT AUTO_INCREMENT PRIMARY KEY,
    version VARCHAR(255) NOT NULL,
    description TEXT,
    applied_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    status ENUM ('applied', 'rolled_back', 'pending') DEFAULT 'applied',
    applied_by VARCHAR(255),
    UNIQUE (version)
) COMMENT 'Tracks the history of migrations applied to the database.';