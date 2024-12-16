-- ====================================================================================================
-- file: seed_access_methods.sql
-- purpose: Insert initial data into the access_methods table
-- ====================================================================================================
INSERT INTO access_methods (
        access_method_code,
        access_method_name,
        access_method_description
    )
VALUES (
        'open_access',
        'Open Access',
        'Research outputs are freely available without any access restrictions.'
    ),
    (
        'free',
        'Free',
        'Access is available at no cost.'
    ),
    (
        'subscription',
        'Subscription',
        'Access requires a paid subscription.'
    );