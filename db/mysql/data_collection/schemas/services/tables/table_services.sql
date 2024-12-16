-- ====================================================================================================
-- file: table_services.sql
-- purpose: To define services that are the fundamental components provided by platforms,
-- including services offered by their providers. These services are utilized in web resources.
-- ====================================================================================================
CREATE TABLE services (
    service_id INT AUTO_INCREMENT PRIMARY KEY COMMENT 'Unique identifier for each service; serves as the primary key for the table',
    status_type_id INT NOT NULL DEFAULT 1 COMMENT '1: active, 2: inactive, 3: maintenance, 4: under_review, 5: suspended, ...; from status_types ',
    --
    service_type_id INT NOT NULL COMMENT 'Service Type: specifies the type of service (1:WEB, 2:API , 3:FTP, 4:DB, 5:MQ, 6:STREAM, 7:BATCH, ...)',
    access_type_id INT NOT NULL COMMENT 'Reference to access_types table; specifies access method (1: api, 2: rss, 3: html )',
    --
    fetch_frequency INT NOT NULL DEFAULT 300 COMMENT 'Frequency (in seconds) at which data will be fetched from the external source',
    time_interval INT NOT NULL DEFAULT 0 COMMENT 'Time interval in which the data source provides data (0: real-time)',
    --
    next_fetch TIMESTAMP NULL COMMENT 'Timestamp for when the next fetch will occur; calculated automatically based on fetch frequency (timestamptz)',
    last_fetched TIMESTAMP NULL COMMENT 'Timestamp for when the data was last fetched; updated during each fetch (timestamptz)',
    last_error_message TEXT COMMENT 'Stores the last error message encountered during data fetching; could be useful for debugging (any error exception)',
    --
    access_method_id INT NOT NULL COMMENT 'Reference to access_method_types table; indicates how the service can be accessed (1: free, 2: open_access, 3: subscription)',
    data_format_id INT NOT NULL COMMENT 'Reference to data_format_types table; specifies the data format (1: json, 2: xml, 3: csv, 4: html)' --
) COMMENT 'services';