-- ====================================================================================================
-- file: seed_data_schemas.sql
-- purpose: Inserting values into the data_schemas table
-- ====================================================================================================
INSERT INTO data_schemas (
        data_schema_code,
        data_schema_name,
        data_schema_description,
        data_schema,
        data_schema_reference,
        data_schema_recommended_databases,
        data_schema_type_id
    )
VALUES (
        'TS_D',
        'Time Series Data',
        'Data points ordered by time; commonly used for statistical analysis and trend observation.',
        '{"type": "object", "properties": {"timestamp": {"type": "string", "format": "date-time"}, "value": {"type": "number"}}}',
        '{"example": {"timestamp": "2024-01-01T00:00:00Z", "value": 123}}',
        'InfluxDB, TimescaleDB',
        1
        /* 'TS'  Compatible with time_series schema_type */
    ),
    (
        'HT_D',
        'Historical Data',
        'Data collected in the past; stored for analysis and trend observation.',
        '{"type": "object", "properties": {"date": {"type": "string", "format": "date"}, "value": {"type": "number"}}}',
        '{"example": {"date": "2024-01-01", "value": 456}}',
        'PostgreSQL, MySQL',
        2
        /* 'HT' -- Compatible with historical schema_type */
    ),
    (
        'RT_D',
        'Real-Time Data',
        'Continuously updating data stream; particularly used for sensor data or social media feeds.',
        '{"type": "object", "properties": {"timestamp": {"type": "string", "format": "date-time"}, "value": {"type": "number"}}}',
        '{"example": {"timestamp": "2024-01-01T00:00:00Z", "value": 789}}',
        'Redis, Apache Kafka',
        3
        /* 'RT' -- Compatible with real_time schema_type */
    ),
    (
        'AG_D',
        'Aggregated Data',
        'Data compiled from multiple sources; contains statistical information such as totals and averages.',
        '{"type": "object", "properties": {"aggregate_type": {"type": "string"}, "total": {"type": "number"}, "count": {"type": "integer"}}}',
        '{"example": {"aggregate_type": "sum", "total": 1000, "count": 100}}',
        'ClickHouse, MongoDB',
        4
        /* 'AG' -- Compatible with aggregated schema_type */
    ),
    (
        'CD_D',
        'Categorical Data',
        'Data divided into groups or categories; commonly used for classification purposes.',
        '{"type": "object", "properties": {"category": {"type": "string"}, "count": {"type": "integer"}}}',
        '{"example": {"category": "A", "count": 200}}',
        'Elasticsearch, MongoDB',
        5
        /* 'CD' -- Compatible with categorical schema_type */
    ),
    (
        'TD_D',
        'Textual Data',
        'Unstructured text data; suitable for natural language processing.',
        '{"type": "object", "properties": {"text": {"type": "string"}}}',
        '{"example": {"text": "Sample text data."}}',
        'PostgreSQL, MongoDB',
        6
        /* 'TD' -- Compatible with text_data schema_type */
    );
INSERT INTO data_schemas (
        data_schema_code,
        data_schema_name,
        data_schema_description,
        data_schema,
        data_schema_reference,
        data_schema_recommended_databases,
        data_schema_type_id
    )
VALUES (
        'TTD',
        'Trend Data',
        'Data structure for capturing trends over time, including title, timestamp, platform, and traffic data.',
        '{"type": "object", "properties": {"title": {"type": "string"}, "timestamp": {"type": "string", "format": "date-time"}, "platform": {"type": "string"}, "provider": {"type": "string"}, "country": {"type": "string"}, "region": {"type": "string"}, "language": {"type": "string"}, "traffic": {"type": "number"}}}',
        '{"example": {"title": "Climate Change", "timestamp": "2024-01-01T00:00:00Z", "platform": "Google Trends", "provider": "Google", "country": "US", "region": "California", "language": "en", "traffic": 2500}}',
        'InfluxDB, PostgreSQL, MongoDB',
        7 -- Trend data türünü referans alıyor
    );