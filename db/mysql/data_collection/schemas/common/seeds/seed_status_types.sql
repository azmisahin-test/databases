-- ====================================================================================================
-- file: seed_status_types.sql
-- purpose: Insert initial data into the status table
-- ====================================================================================================
INSERT INTO status_types (
        status_type_code,
        status_type_name,
        status_type_description
    )
VALUES (
        'active',
        'Active',
        'The item is active and operational'
    ),
    (
        'inactive',
        'Inactive',
        'The item is inactive and not in use'
    ),
    (
        'maintenance',
        'Maintenance',
        'The item is under maintenance and temporarily unavailable'
    ),
    (
        'under_review',
        'Under Review',
        'The item is under review for quality assurance'
    ),
    (
        'suspended',
        'Suspended',
        'The item is suspended due to a violation or policy issue'
    );