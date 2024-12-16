-- ====================================================================================================
-- file: seed_data_schema_types.sql
-- purpose: Inserting values into the data_schema_types table
-- ====================================================================================================
INSERT INTO data_schema_types (
        data_schema_type_code,
        data_schema_type_name,
        data_schema_type_description,
        data_schema_type,
        data_schema_type_reference
    )
VALUES (
        'TS',
        'time_series',
        'Used to organize data points in chronological order; particularly suitable for trend analysis.',
        '{"type": "object", "properties": {"timestamp": {"type": "string", "format": "date-time"}, "value": {"type": "number"}}}',
        '{"example": "Commonly used for data such as weather conditions or stock prices."}'
    ),
    (
        'HT',
        'historical',
        'Data collected in the past and used for analysis.',
        '{"type": "object", "properties": {"event_date": {"type": "string", "format": "date"}, "data": {"type": "object"}}}',
        '{"example": "For example, historical sales data."}'
    ),
    (
        'RT',
        'real_time',
        'Real-time data stream; for instance, sensor data or social media feeds.',
        '{"type": "object", "properties": {"timestamp": {"type": "string", "format": "date-time"}, "value": {"type": "number"}}}',
        '{"example": "Used to capture immediate events."}'
    ),
    (
        'AG',
        'aggregated',
        'Structure where data collected from multiple sources is combined.',
        '{"type": "object", "properties": {"aggregate_type": {"type": "string"}, "total": {"type": "number"}, "count": {"type": "integer"}}}',
        '{"example": "Can be used for total sales count or average temperature."}'
    ),
    (
        'CD',
        'categorical',
        'Structure where data is divided into specific categories; commonly used for classification.',
        '{"type": "object", "properties": {"category": {"type": "string"}, "count": {"type": "integer"}}}',
        '{"example": "Can be used for product categories and the number of products in each category."}'
    ),
    (
        'TD',
        'text_data',
        'Unstructured text data used for natural language processing.',
        '{"type": "object", "properties": {"text": {"type": "string"}}}',
        '{"example": "Can be used for natural language data such as customer reviews."}'
    );
INSERT INTO data_schema_types (
        data_schema_type_code,
        data_schema_type_name,
        data_schema_type_description,
        data_schema_type,
        data_schema_type_reference
    )
VALUES (
        'TTD',
        'trend_data',
        'Data structure for capturing trends or topics over time, including metadata about the data source.',
        '{"type": "object", "properties": {"title": {"type": "string"}, "timestamp": {"type": "string", "format": "date-time"}, "platform": {"type": "string"}, "provider": {"type": "string"}, "country": {"type": "string"}, "region": {"type": "string"}, "language": {"type": "string"}, "traffic": {"type": "number"}}}',
        '{"example": {"title": "Climate Change", "timestamp": "2024-01-01T00:00:00Z", "platform": "Google Trends", "provider": "Google", "country": "US", "region": "California", "language": "en", "traffic": 2500}}'
    );