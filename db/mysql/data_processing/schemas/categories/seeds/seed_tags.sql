-- ====================================================================================================
-- file: seed_tags.sql
-- purpose: Insert
-- ====================================================================================================
-- "The Universe and Natural World"
INSERT INTO tags (
        tag_code,
        tag_name,
        tag_description
    )
VALUES (
        'cosmos',
        'Cosmos',
        'The vast, seemingly infinite expanse that includes all of space and time.'
    ),
    (
        'space',
        'Space',
        'The physical universe beyond Earth, including planets, stars, and galaxies.'
    ),
    (
        'galaxies',
        'Galaxies',
        'Massive systems composed of stars, gas, dust, and dark matter, bound together by gravity.'
    ),
    (
        'stars',
        'Stars',
        'Luminous celestial bodies made of plasma, often forming in clusters within galaxies.'
    ),
    (
        'planets',
        'Planets',
        'Large celestial bodies orbiting stars, capable of supporting life under certain conditions.'
    ),
    (
        'black_holes',
        'Black Holes',
        'Regions of space where gravitational pull is so strong that nothing, not even light, can escape.'
    ),
    (
        'dark_matter',
        'Dark Matter',
        'A type of matter that does not emit light or energy, detectable only through its gravitational effects.'
    ),
    (
        'earth',
        'Earth',
        'The third planet from the Sun and the only astronomical object known to harbor life.'
    ),
    (
        'geology',
        'Geology',
        'The study of Earth’s solid material, including rocks, minerals, and the processes that shape them.'
    ),
    (
        'oceanography',
        'Oceanography',
        'The study of the oceans, their composition, movement, and the life forms they support.'
    ),
    (
        'meteorology',
        'Meteorology',
        'The science dealing with the atmosphere and its phenomena, including weather and climate.'
    ),
    (
        'weather',
        'Weather',
        'Tags related to meteorological data and forecasts.'
    ),
    (
        'ecology',
        'Ecology',
        'The study of interactions among organisms and their environment.'
    );
-- "Human Society and Culture"
INSERT INTO tags (
        tag_code,
        tag_name,
        tag_description
    )
VALUES (
        'history',
        'History',
        'The study of past events, particularly in human affairs.'
    ),
    (
        'ancient_history',
        'Ancient History',
        'The study of historical events from the earliest recorded times to the early Middle Ages.'
    ),
    (
        'modern_history',
        'Modern History',
        'The study of historical events from the late 15th century to the present.'
    ),
    (
        'politics',
        'Politics',
        'The activities associated with governance, including policy-making and administration.'
    ),
    (
        'governance',
        'Governance',
        'The processes and systems by which organizations or countries are directed and controlled.'
    ),
    (
        'economics',
        'Economics',
        'The social science that studies the production, distribution, and consumption of goods and services.'
    ),
    (
        'religion',
        'Religion',
        'A system of beliefs, practices, and values often centered around spiritual experiences.'
    ),
    (
        'beliefs',
        'Beliefs',
        'Convictions or acceptance that certain things are true or real.'
    ),
    (
        'law',
        'Law',
        'A system of rules created and enforced through social or governmental institutions.'
    ),
    (
        'justice',
        'Justice',
        'The concept of moral rightness based on ethics, law, fairness, and equity.'
    ),
    (
        'sociology',
        'Sociology',
        'The study of social behavior, society, patterns of social relationships, and culture.'
    ),
    (
        'communication',
        'Communication',
        'The process of exchanging information and ideas through various mediums.'
    ),
    (
        'cultural_studies',
        'Cultural Studies',
        'An interdisciplinary field that examines cultural practices and their relation to power.'
    ),
    (
        'gender_studies',
        'Gender Studies',
        'An academic field that explores the role of gender in society and its impact on individuals.'
    ),
    (
        'trends',
        'Trends',
        'Tags related to current trends across various domains.'
    ),
    (
        'finance',
        'Finance',
        'Tags related to financial data and market trends.'
    ),
    (
        'social_media',
        'Social Media',
        'Tags related to data collected from social media platforms.'
    );
-- "Technology and Innovation"
INSERT INTO tags (
        tag_code,
        tag_name,
        tag_description
    )
VALUES (
        'ai',
        'Artificial intelligence',
        'Artificial intelligence; the simulation of human intelligence processes by machines.'
    ),
    (
        'machine_learning',
        'Machine Learning',
        'A subset of AI that involves the development of algorithms that allow computers to learn from data.'
    ),
    (
        'blockchain',
        'Blockchain',
        'A decentralized digital ledger technology that records transactions across many computers.'
    ),
    (
        'quantum_computing',
        'Quantum Computing',
        'The use of quantum-mechanical phenomena to perform operations on data.'
    ),
    (
        'robotics',
        'Robotics',
        'The branch of technology that deals with the design, construction, operation, and application of robots.'
    ),
    (
        'cybersecurity',
        'Cybersecurity',
        'The practice of protecting systems, networks, and programs from digital attacks.'
    ),
    (
        'software_development',
        'Software Development',
        'The process of designing, coding, testing, and maintaining software applications.'
    ),
    (
        'biotechnology',
        'Biotechnology',
        'The use of living systems and organisms to develop or create products.'
    ),
    (
        'nanotechnology',
        'Nanotechnology',
        'The manipulation of matter on an atomic, molecular, and supramolecular scale.'
    ),
    (
        'automation',
        'Automation',
        'The use of technology to perform tasks with minimal human intervention.'
    ),
    (
        'data_science',
        'Data Science',
        'The field that uses scientific methods, processes, algorithms, and systems to extract knowledge from data.'
    ),
    (
        'IoT',
        'Internet of Things',
        'Internet of Things; the interconnection of computing devices embedded in everyday objects.'
    ),
    (
        'cloud_computing',
        'Cloud Computing',
        'The delivery of computing services over the internet to offer faster innovation, flexible resources, and economies of scale.'
    );
-- "Human Needs and Activities"
INSERT INTO tags (
        tag_code,
        tag_name,
        tag_description
    )
VALUES (
        'health',
        'Health',
        'The state of physical, mental, and social well-being.'
    ),
    (
        'medicine',
        'Medicine',
        'The science and practice of diagnosing, treating, and preventing illness.'
    ),
    (
        'nutrition',
        'Nutrition',
        'The process of providing or obtaining the food necessary for health and growth.'
    ),
    (
        'fitness',
        'Fitness',
        'The condition of being physically fit and healthy.'
    ),
    (
        'exercise',
        'Exercise',
        'Physical activity that enhances or maintains physical fitness and overall health.'
    ),
    (
        'education',
        'Education',
        'The process of receiving or giving systematic instruction, especially at a school or university.'
    ),
    (
        'work',
        'Work',
        'The activity involving mental or physical effort done in order to achieve a result.'
    ),
    (
        'careers',
        'Careers',
        'An individual’s journey through learning, work, and other aspects of life.'
    ),
    (
        'housing',
        'Housing',
        'The provision of shelter or living accommodations.'
    ),
    (
        'transportation',
        'Transportation',
        'The movement of people or goods from one place to another.'
    ),
    (
        'food_security',
        'Food Security',
        'The state of having reliable access to a sufficient quantity of affordable, nutritious food.'
    ),
    (
        'personal_finance',
        'Personal Finance',
        'The management of an individual’s financial activities, including budgeting and investing.'
    ),
    (
        'childcare',
        'Childcare',
        'The care of children, typically provided by parents or caregivers.'
    );
-- "Creative Arts and Entertainment"
INSERT INTO tags (
        tag_code,
        tag_name,
        tag_description
    )
VALUES (
        'literature',
        'Literature',
        'Written works, especially those considered of superior or lasting artistic merit.'
    ),
    (
        'music',
        'Music',
        'The art of arranging sounds in time to produce a composition through elements of melody, harmony, rhythm, and timbre.'
    ),
    (
        'visual_arts',
        'Visual Arts',
        'Art forms that are primarily visual in nature, such as painting, sculpture, and photography.'
    ),
    (
        'theater',
        'Theater',
        'The branch of the performing arts that focuses on the presentation of plays.'
    ),
    (
        'film',
        'Film',
        'The art of making motion pictures, combining storytelling with visual images.'
    ),
    (
        'video_games',
        'Video Games',
        'Electronic games that involve interaction with a user interface to generate visual feedback on a two- or three-dimensional display.'
    ),
    (
        'dance',
        'Dance',
        'A form of art that involves movement of the body, often rhythmically and to music.'
    ),
    (
        'photography',
        'Photography',
        'The art or practice of capturing images using light and a camera.'
    ),
    (
        'comics',
        'Comics',
        'Narrative artwork that combines images and text, often presented in a sequence.'
    ),
    (
        'fashion',
        'Fashion',
        'The popular style in clothing, accessories, and behavior.'
    );
-- "Human Interaction and Social Structure"
INSERT INTO tags (
        tag_code,
        tag_name,
        tag_description
    )
VALUES (
        'psychology',
        'Psychology',
        'The scientific study of the mind and behavior.'
    ),
    (
        'anthropology',
        'Anthropology',
        'The study of humans, human behavior, and societies, both past and present.'
    ),
    (
        'political_science',
        'Political Science',
        'The study of politics, government systems, and political behavior.'
    ),
    (
        'globalization',
        'Globalization',
        'The process by which businesses or other organizations develop international influence.'
    ),
    (
        'leisure',
        'Leisure',
        'Free time when one is not working or attending to other duties.'
    ),
    (
        'outdoor_activities',
        'Outdoor Activities',
        'Recreational activities that take place outside, typically in nature.'
    ),
    (
        'adventure',
        'Adventure',
        'Engaging in risky or exciting experiences, often involving exploration.'
    );
-- "Leisure and Recreation"
INSERT INTO tags (
        tag_code,
        tag_name,
        tag_description
    )
VALUES (
        'sports',
        'Sports',
        'Physical activities that involve competition and skill, often played by teams.'
    ),
    (
        'travel',
        'Travel',
        'The movement of people between distant geographical locations.'
    ),
    (
        'hobbies',
        'Hobbies',
        'Activities done for pleasure and relaxation during free time.'
    ),
    (
        'gaming',
        'Gaming',
        'The act of playing video games for entertainment or competition.'
    ),
    (
        'gardening',
        'Gardening',
        'The practice of growing and cultivating plants as part of horticulture.'
    ),
    (
        'collecting',
        'Collecting',
        'The hobby of acquiring items of a particular type and maintaining them in a collection.'
    ),
    (
        'camping',
        'Camping',
        'An outdoor activity involving staying overnight in a tent or other temporary shelter.'
    ),
    (
        'fishing',
        'Fishing',
        'The activity of catching fish for food, sport, or leisure.'
    ),
    (
        'amateur_sports',
        'Amateur Sports',
        'Sports activities engaged in by non-professionals for enjoyment rather than financial gain.'
    );
-- "Man-made Constructs"
INSERT INTO tags (
        tag_code,
        tag_name,
        tag_description
    )
VALUES (
        'architecture',
        'Architecture',
        'The art and science of designing buildings and other physical structures.'
    ),
    (
        'urban_planning',
        'Urban Planning',
        'The process of designing and regulating land use in urban areas.'
    ),
    (
        'civil_engineering',
        'Civil Engineering',
        'The branch of engineering concerned with the design and construction of public works.'
    ),
    (
        'bridges',
        'Bridges',
        'Structures built to span physical obstacles, such as water or roads, for the purpose of providing passage.'
    ),
    (
        'tunnels',
        'Tunnels',
        'Underground passageways created for transportation or utility purposes.'
    ),
    (
        'skyscrapers',
        'Skyscrapers',
        'Tall, continuously habitable buildings of over 40 floors.'
    ),
    (
        'energy_systems',
        'Energy Systems',
        'Systems that produce, transmit, and consume energy in various forms.'
    ),
    (
        'water_management',
        'Water Management',
        'The activity of planning, developing, distributing, and managing the optimum use of water resources.'
    ),
    (
        'sustainable_buildings',
        'Sustainable Buildings',
        'Structures designed to minimize environmental impact and maximize energy efficiency.'
    );
-- "Environment and Sustainability"
INSERT INTO tags (
        tag_code,
        tag_name,
        tag_description
    )
VALUES (
        'climate_change',
        'Climate Change',
        'Long-term shifts in temperatures and weather patterns, mainly caused by human activities.'
    ),
    (
        'renewable_energy',
        'Renewable Energy',
        'Energy from sources that are naturally replenished, such as solar and wind.'
    ),
    (
        'conservation',
        'Conservation',
        'The responsible management of natural resources to prevent exploitation and destruction.'
    ),
    (
        'pollution',
        'Pollution',
        'The introduction of harmful substances or products into the environment.'
    ),
    (
        'waste_management',
        'Waste Management',
        'The collection, transport, processing, and disposal of waste materials.'
    ),
    (
        'biodiversity',
        'Biodiversity',
        'The variety of life in the world or in a particular habitat or ecosystem.'
    ),
    (
        'deforestation',
        'Deforestation',
        'The clearing of trees, transforming a forest into cleared land.'
    ),
    (
        'environmental_policy',
        'Environmental Policy',
        'The commitment of an organization or government to improve environmental quality.'
    );
-- "Data and Information Systems"
INSERT INTO tags (
        tag_code,
        tag_name,
        tag_description
    )
VALUES (
        'big_data',
        'Big Data',
        'Large and complex data sets that traditional data processing applications cannot handle.'
    ),
    (
        'database_management',
        'Database Management',
        'The software and practices involved in managing databases.'
    ),
    (
        'data_privacy',
        'Data Privacy',
        'The handling and protection of personal data collected by organizations.'
    ),
    (
        'data_visualization',
        'Data Visualization',
        'The graphical representation of information and data.'
    ),
    (
        'network_systems',
        'Network Systems',
        'Interconnected systems that allow data exchange and communication.'
    ),
    (
        'distributed_systems',
        'Distributed Systems',
        'Systems that consist of multiple components located on different networked computers.'
    );