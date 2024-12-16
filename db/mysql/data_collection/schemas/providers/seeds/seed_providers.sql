-- ====================================================================================================
-- file: seed_providers.sql
-- purpose: Insert initial data into the providers table
-- ====================================================================================================
INSERT INTO
    providers (
        status_type_id,
        provider_code,
        provider_name,
        provider_description
    )
VALUES
    (
        1,
        'google_llc',
        'Google LLC',
        'Data providing technology company specializing in various online services and products.'
    ),
    (
        2,
        'open_meteo_gmbh',
        'Open-Meteo GmbH',
        'Meteorological data provider offering free weather data and API services.'
    ),
    (
        2,
        'x_corp',
        'X Corp.',
        'Social media platform providing news and information sharing services.'
    ),
    (2, 'reddit_inc', 'Reddit Inc', 'Content-sharing.'),
    (
        2,
        'youtube_llc',
        'YouTube LLC',
        'Video-sharing platform that allows users to upload, view, and share videos.'
    ),
    (
        2,
        'byte_dance',
        'byte_dance',
        'ByteDance is a Chinese technology company that develops artificial intelligence-powered social media, news, and entertainment platforms and is known worldwide for TikTok.'
    ),
    (
        2,
        'facebook_inc',
        'Facebook Inc. or Meta',
        'Leading social media company providing user engagement and advertising services.'
    );