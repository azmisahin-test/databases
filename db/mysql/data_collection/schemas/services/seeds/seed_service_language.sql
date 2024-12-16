-- ====================================================================================================
-- file: seed_service_language.sql
-- purpose: Insert
-- ====================================================================================================
-- Example
INSERT INTO
    service_language (service_id, language_id)
VALUES -- country_code, language_code, country_name, country_local, areas_of_interest
    (1, 038), -- US, en, United States, United States, Technology; Media and Entertainment; Finance; Social Media; Politics; Pop Culture
    (2, 192), -- CN, zh, China, 中国, Technology and Innovation; E-Commerce; Social Media; Artificial Intelligence; Mobile Apps; Manufacturing
    (3, 076), -- JP, ja, Japan, 日本, Technology; Gaming; Robotics; Pop Culture; Automotive; Design
    (4, 088), -- KR, ko, South Korea, 대한민국, K-Pop and Music; Beauty and Fashion; Technology; Social Media; Entertainment
    (5, 058), -- IN, hi, India, भारत, Technology and Digital Markets; Bollywood and Entertainment; E-Commerce; Youth Culture; Social Media
    (6, 137), -- BR, pt, Brazil, Brasil, Fashion; Music; Social Media; Sports; Environment; Entertainment
    (7, 033), -- DE, de, Germany, Deutschland, Automotive; Engineering; Environment and Sustainability; Technology; Finance; Politics
    (8, 038), -- UK, en, United Kingdom, United Kingdom, Fashion; Music; Finance; Media; Politics; Technology
    (9, 048), -- FR, fr, France, France, Fashion; Art; Gastronomy; Design; Tourism; Environment
    (10, 142), -- RU, ru, Russia, Россия, Technology; Social Media; Politics; Military and Science; Culture; Energy
    (11, 038), -- AU, en, Australia, Australia, Environment and Sustainability; Creative Industries; Sports and Lifestyle; Social Media; Technology
    (12, 172); -- TR, tr, Turkey, Türkiye, Fashion and Beauty; Media and Entertainment; Start-Up Ecosystem; Food and Gastronomy; Tourism; Politics and Social Movements