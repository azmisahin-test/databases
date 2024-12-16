-- ====================================================================================================
-- file: seed_access_types.sql
-- purpose: Insert initial data into the access_types table
-- ====================================================================================================
INSERT INTO access_types (
        access_type_code,
        access_type_name,
        access_type_description
    )
VALUES (
        'api',
        'Web Api',
        'Source type: web - Application Programming Interface, allows applications to communicate.'
    ),
    (
        'rss',
        'Web Rss/Xml',
        'Source type: web - Really Simple Syndication, a web feed format for syndicating content.'
    ),
    (
        'html',
        'Web Html/Scraping',
        'Source type: web - Extracting data from websites using automated tools.'
    ),
    (
        'influxdb',
        'Database Influx',
        'Source type: database - Time-series database for real-time analytics.'
    ),
    (
        'elasticsearch',
        'Database Elasticsearch',
        'Source type: database - Distributed, RESTful search and analytics engine.'
    ),
    (
        'mysql',
        'Database MySql',
        'Source type: database - Open-source relational database management system.'
    ),
    (
        'mongo',
        'Database Mongo',
        'Source type: database - NoSQL database that uses a document-oriented data model.'
    ),
    (
        'postgresql',
        'Database PostgreSQL',
        'Source type: database - Open-source object-relational database system.'
    );