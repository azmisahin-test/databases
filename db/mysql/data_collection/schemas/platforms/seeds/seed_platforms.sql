-- ====================================================================================================
-- file: seed_platforms.sql
-- purpose: Insert initial data into the platforms table
-- ====================================================================================================
INSERT INTO
    platforms (
        status_type_id,
        platform_code,
        platform_name,
        platform_description
    )
VALUES
    (
        1,
        'google_trends',
        'Google Trends',
        'Real-time trends by Google'
    ),
    (
        2,
        'open_meteo',
        'Open-Meteo',
        'Real-time access to the largest global weather database'
    ),
    (
        2,
        'twitter',
        'Twitter',
        'Social media platform for public sharing of short messages and news'
    ),
    (
        2,
        'reddit',
        'Reddit',
        'Content-sharing platform where users can discuss various topics'
    ),
    (
        2,
        'youtube',
        'YouTube',
        'Video-sharing platform for user-generated and professional content'
    ),
    (
        2,
        'tiktok',
        'TikTok',
        'Short-form video hosting service for user-generated content'
    ),
    (
        2,
        'facebook',
        'Facebook',
        'Social media platform for connecting with friends and sharing content'
    ),
    (
        2,
        'instagram',
        'Instagram',
        'Photo and video sharing social networking service'
    );