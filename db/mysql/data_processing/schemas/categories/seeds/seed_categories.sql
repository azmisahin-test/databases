-- ====================================================================================================
-- file: seed_categories.sql
-- purpose: It was created to form the basis for use in the steps of data collection,
-- processing, transformation, recording and analysis.
-- ====================================================================================================
-- Top-level categories
INSERT INTO categories (
        category_parent_id,
        category_title,
        category_name,
        category_description
    )
VALUES (
        NULL,
        'The Universe and Natural World',
        'The Universe and Natural World',
        'Exploration of cosmos, planets, and the Earth.'
    ),
    (
        NULL,
        'Human Society and Culture',
        'Human Society and Culture',
        'Study of human interactions, history, and social structures.'
    ),
    (
        NULL,
        'Human Needs and Activities',
        'Human Needs and Activities',
        'Essential activities and needs of human life.'
    ),
    (
        NULL,
        'Human Interaction and Social Structure',
        'Human Interaction and Social Structure',
        'Understanding human behavior and social systems.'
    ),
    (
        NULL,
        'Technology and Innovation',
        'Technology and Innovation',
        'Advancements in technology and its impact on society.'
    ),
    (
        NULL,
        'Creative Arts and Entertainment',
        'Creative Arts and Entertainment',
        'Expressions of creativity through various forms of art and entertainment.'
    ),
    (
        NULL,
        'Leisure and Recreation',
        'Leisure and Recreation',
        'Activities for enjoyment and relaxation.'
    ),
    (
        NULL,
        'Man-made Constructs',
        'Man-made Constructs',
        'Structures and systems created by humans.'
    ),
    (
        NULL,
        'Environment and Sustainability',
        'Environment and Sustainability',
        'Efforts to protect and sustain the natural environment.'
    ),
    (
        NULL,
        'Learning and Education',
        'Learning and Education',
        'Structured education and self-learning topics.'
    );
COMMIT;
-- "The Universe and Natural World"
-- First, we will create a temporary variable to store the ID of the parent category
SET @category_parent_id = (
        SELECT category_id
        FROM categories
        WHERE category_name = 'The Universe and Natural World'
    );
INSERT INTO categories (
        category_parent_id,
        category_title,
        category_name,
        category_description
    )
VALUES -- Cosmos and Astronomy
    (
        @category_parent_id,
        'Cosmology',
        'Cosmology',
        'Study of the origin, evolution, and structure of the universe.'
    ),
    (
        @category_parent_id,
        'Astronomy',
        'Astronomy',
        'Observation and study of celestial objects and space.'
    ),
    (
        @category_parent_id,
        'Big Bang Theory',
        'Big Bang Theory',
        'Theoretical study of the universe\'s origin.'
    ),
    (
        @category_parent_id,
        'Exoplanets',
        'Exoplanets',
        'Study of planets outside our Solar System.'
    ),
    (
        @category_parent_id,
        'Astrobiology',
        'Astrobiology',
        'Exploration of the possibility of life in the universe.'
    ),
    (
        @category_parent_id,
        'Astrophysics',
        'Astrophysics',
        'Study of the physical properties of celestial objects and phenomena.'
    ),
    (
        @category_parent_id,
        'Black Holes',
        'Black Holes',
        'Understanding black holes and their properties.'
    ),
    (
        @category_parent_id,
        'Dark Matter',
        'Dark Matter',
        'Study of dark matter and its impact on the universe.'
    ),
    -- Earth Sciences
    (
        @category_parent_id,
        'Earth Sciences',
        'Earth Sciences',
        'Comprehensive study of Earth and its processes.'
    ),
    (
        @category_parent_id,
        'Life Sciences',
        'Life Sciences',
        'Study of biological organisms and ecosystems.'
    ),
    -- Environmental Concerns
    (
        @category_parent_id,
        'Climate Change',
        'Climate Change',
        'Research on global warming and climate shifts.'
    ),
    (
        @category_parent_id,
        'Renewable Energy Sources',
        'Renewable Energy Sources',
        'Study of sustainable and eco-friendly energy solutions.'
    );
COMMIT;
-- Earth Sciences
SET @earth_sciences_id = (
        SELECT category_id
        FROM categories
        WHERE category_name = 'Earth Sciences'
    );
INSERT INTO categories (
        category_parent_id,
        category_title,
        category_name,
        category_description
    )
VALUES (
        @earth_sciences_id,
        'Geology',
        'Geology',
        'Science of Earth’s structure, materials, and processes.'
    ),
    (
        @earth_sciences_id,
        'Meteorology',
        'Meteorology',
        'Study of the atmosphere and weather patterns.'
    ),
    (
        @earth_sciences_id,
        'Oceanography',
        'Oceanography',
        'Study of oceans and marine ecosystems.'
    ),
    (
        @earth_sciences_id,
        'Hydrology',
        'Hydrology',
        'Study of the Earth’s water cycle and resources.'
    ),
    (
        @earth_sciences_id,
        'Atmospheric Science',
        'Atmospheric Science',
        'Exploration of the Earth\'s atmospheric layers and processes.'
    );
COMMIT;
-- Life Sciences
SET @life_sciences_id = (
        SELECT category_id
        FROM categories
        WHERE category_name = 'Life Sciences'
    );
INSERT INTO categories (
        category_parent_id,
        category_title,
        category_name,
        category_description
    )
VALUES (
        @life_sciences_id,
        'Botany',
        'Botany',
        'Study of plants and their ecological importance.'
    ),
    (
        @life_sciences_id,
        'Zoology',
        'Zoology',
        'Study of animals and animal life.'
    ),
    (
        @life_sciences_id,
        'Microbiology',
        'Microbiology',
        'Study of microorganisms and their impacts on ecosystems.'
    ),
    (
        @life_sciences_id,
        'Evolutionary Biology',
        'Evolutionary Biology',
        'Study of evolutionary processes and adaptations.'
    );
COMMIT;
-- Human Society and Culture
SET @human_society_id = (
        SELECT category_id
        FROM categories
        WHERE category_name = 'Human Society and Culture'
    );
INSERT INTO categories (
        category_parent_id,
        category_title,
        category_name,
        category_description
    )
VALUES (
        @human_society_id,
        'Anthropology',
        'Anthropology',
        'Study of human societies, cultures, and their development.'
    ),
    (
        @human_society_id,
        'Sociology',
        'Sociology',
        'Analysis of social behavior, organization, and structures.'
    ),
    (
        @human_society_id,
        'Archaeology',
        'Archaeology',
        'Study of human history and prehistory through excavations and artifacts.'
    ),
    (
        @human_society_id,
        'Cultural Studies',
        'Cultural Studies',
        'Exploration of cultures and cultural practices.'
    ),
    (
        @human_society_id,
        'World History',
        'World History',
        'Comprehensive study of global historical events and civilizations.'
    ),
    (
        @human_society_id,
        'Ancient Civilizations',
        'Ancient Civilizations',
        'Study of ancient societies like Egypt, Mesopotamia, and Greece.'
    ),
    (
        @human_society_id,
        'Modern History',
        'Modern History',
        'Examination of events from the 16th century to the present.'
    ),
    (
        @human_society_id,
        'Medieval History',
        'Medieval History',
        'Exploration of historical events and societies during the Middle Ages.'
    ),
    (
        @human_society_id,
        'Colonialism',
        'Colonialism',
        'Study of colonial expansion and its effects on societies.'
    ),
    (
        @human_society_id,
        'Globalization',
        'Globalization',
        'Study of increasing global interconnectedness and its impacts.'
    ),
    (
        @human_society_id,
        'Cultural Identity',
        'Cultural Identity',
        'Exploration of the factors that shape individual and collective identity.'
    ),
    (
        @human_society_id,
        'Multiculturalism',
        'Multiculturalism',
        'Study of diverse cultures coexisting in societies.'
    ),
    (
        @human_society_id,
        'Gender Studies',
        'Gender Studies',
        'Analysis of gender roles, relations, and identities.'
    ),
    (
        @human_society_id,
        'Race and Ethnicity',
        'Race and Ethnicity',
        'Exploration of race, ethnicity, and related social dynamics.'
    ),
    (
        @human_society_id,
        'Philosophy',
        'Philosophy',
        'Study of fundamental questions about existence, knowledge, and ethics.'
    ),
    (
        @human_society_id,
        'Ethics and Morality',
        'Ethics and Morality',
        'Exploration of moral principles and value systems.'
    ),
    (
        @human_society_id,
        'Religious Studies',
        'Religious Studies',
        'Analysis of religions, beliefs, and spiritual practices.'
    ),
    (
        @human_society_id,
        'Mythology',
        'Mythology',
        'Study of myths, legends, and folklore from different cultures.'
    ),
    (
        @human_society_id,
        'Political Philosophy',
        'Political Philosophy',
        'Study of concepts like justice, liberty, and governance.'
    ),
    (
        @human_society_id,
        'Human Rights',
        'Human Rights',
        'Examination of the rights and freedoms encategory_titled to all humans.'
    ),
    (
        @human_society_id,
        'Social Justice',
        'Social Justice',
        'Advocacy and analysis of equal rights and opportunities.'
    ),
    (
        @human_society_id,
        'Activism and Advocacy',
        'Activism and Advocacy',
        'Efforts to promote, impede, or direct social, political, and environmental reform.'
    ),
    (
        @human_society_id,
        'Environmental Justice',
        'Environmental Justice',
        'Focus on fair treatment of all people regarding environmental policies.'
    ),
    (
        @human_society_id,
        'Public Policy',
        'Public Policy',
        'Study of governmental policies and their impact on society.'
    );
COMMIT;
-- "Human Needs and Activities"
SET @human_needs_id = (
        SELECT category_id
        FROM categories
        WHERE category_name = 'Human Needs and Activities'
    );
INSERT INTO categories (
        category_parent_id,
        category_title,
        category_name,
        category_description
    )
VALUES -- Basic Necessities
    (
        @human_needs_id,
        'Food and Nutrition',
        'Food and Nutrition',
        'Study of food sources, nutrition, and dietetics.'
    ),
    (
        @human_needs_id,
        'Shelter and Housing',
        'Shelter and Housing',
        'Exploration of housing, architecture, and shelter as a basic human need.'
    ),
    (
        @human_needs_id,
        'Clothing and Apparel',
        'Clothing and Apparel',
        'Study of clothing, fashion, and cultural significance of apparel.'
    ),
    (
        @human_needs_id,
        'Healthcare and Wellness',
        'Healthcare and Wellness',
        'Focus on healthcare systems, medical practices, and personal wellness.'
    ),
    -- Physical and Mental Health
    (
        @human_needs_id,
        'Physical Fitness',
        'Physical Fitness',
        'Promotion of physical health through exercise and active living.'
    ),
    (
        @human_needs_id,
        'Mental Health',
        'Mental Health',
        'Study and practices related to psychological well-being.'
    ),
    (
        @human_needs_id,
        'Sleep and Rest',
        'Sleep and Rest',
        'Importance of sleep and rest for health and wellness.'
    ),
    (
        @human_needs_id,
        'Stress Management',
        'Stress Management',
        'Techniques and practices for managing stress and improving mental health.'
    ),
    -- Financial and Economic Needs
    (
        @human_needs_id,
        'Employment and Careers',
        'Employment and Careers',
        'Exploration of job markets, career paths, and employment trends.'
    ),
    (
        @human_needs_id,
        'Personal Finance',
        'Personal Finance',
        'Study of personal finance management, budgeting, and investment.'
    ),
    (
        @human_needs_id,
        'Wealth and Resource Management',
        'Wealth and Resource Management',
        'Approaches to managing wealth and resources efficiently.'
    ),
    -- Education and Skill Development
    (
        @human_needs_id,
        'Formal Education',
        'Formal Education',
        'Traditional educational systems and institutions.'
    ),
    (
        @human_needs_id,
        'Self-Improvement',
        'Self-Improvement',
        'Efforts for personal development, learning, and skill enhancement.'
    ),
    (
        @human_needs_id,
        'Professional Training',
        'Professional Training',
        'Specialized training and vocational education for career growth.'
    ),
    (
        @human_needs_id,
        'Literacy and Numeracy',
        'Literacy and Numeracy',
        'Basic educational skills necessary for daily life and professional development.'
    ),
    -- Social and Interpersonal Needs
    (
        @human_needs_id,
        'Relationships',
        'Relationships',
        'Importance and dynamics of personal relationships and family.'
    ),
    (
        @human_needs_id,
        'Community Involvement',
        'Community Involvement',
        'Ways to engage with and contribute to local communities.'
    ),
    (
        @human_needs_id,
        'Recreation and Leisure',
        'Recreation and Leisure',
        'Activities for relaxation and enjoyment, essential for mental well-being.'
    ),
    -- Safety and Security
    (
        @human_needs_id,
        'Personal Safety',
        'Personal Safety',
        'Strategies and measures to ensure personal safety and security.'
    ),
    (
        @human_needs_id,
        'Emergency Preparedness',
        'Emergency Preparedness',
        'Planning and preparation for emergencies and unexpected events.'
    ),
    (
        @human_needs_id,
        'Legal Protection',
        'Legal Protection',
        'Understanding of legal rights and systems for personal security.'
    );
COMMIT;
-- "Human Interaction and Social Structure"
SET @human_interaction_id = (
        SELECT category_id
        FROM categories
        WHERE category_name = 'Human Interaction and Social Structure'
    );
INSERT INTO categories (
        category_parent_id,
        category_title,
        category_name,
        category_description
    )
VALUES -- Social Institutions
    (
        @human_interaction_id,
        'Family Structure',
        'Family Structure',
        'Exploration of family dynamics, roles, and societal impact.'
    ),
    (
        @human_interaction_id,
        'Education Systems',
        'Education Systems',
        'Study of educational institutions and their impact on social structure.'
    ),
    (
        @human_interaction_id,
        'Political Systems',
        'Political Systems',
        'Analysis of governance structures and political ideologies.'
    ),
    (
        @human_interaction_id,
        'Economic Systems',
        'Economic Systems',
        'Understanding different economic models and their influence on society.'
    ),
    -- Social Dynamics and Relationships
    (
        @human_interaction_id,
        'Socialization',
        'Socialization',
        'Processes and mechanisms of social learning and behavior.'
    ),
    (
        @human_interaction_id,
        'Group Behavior',
        'Group Behavior',
        'Study of interactions within groups and group dynamics.'
    ),
    (
        @human_interaction_id,
        'Communication Styles',
        'Communication Styles',
        'Different modes and styles of human communication.'
    ),
    (
        @human_interaction_id,
        'Cultural Norms and Values',
        'Cultural Norms and Values',
        'Exploration of shared beliefs, customs, and societal norms.'
    ),
    -- Community and Identity
    (
        @human_interaction_id,
        'Community Development',
        'Community Development',
        'Efforts and strategies to build and enhance communities.'
    ),
    (
        @human_interaction_id,
        'Social Identity',
        'Social Identity',
        'How individuals and groups perceive themselves within a society.'
    ),
    (
        @human_interaction_id,
        'Gender and Sexuality',
        'Gender and Sexuality',
        'Study of gender roles, identities, and sexual orientation.'
    ),
    (
        @human_interaction_id,
        'Ethnicity and Race',
        'Ethnicity and Race',
        'Understanding race, ethnicity, and their societal impacts.'
    ),
    -- Social Challenges and Change
    (
        @human_interaction_id,
        'Social Inequality',
        'Social Inequality',
        'Issues related to disparity in wealth, opportunities, and social status.'
    ),
    (
        @human_interaction_id,
        'Human Rights and Justice',
        'Human Rights and Justice',
        'Focus on human rights, legal justice, and equality.'
    ),
    (
        @human_interaction_id,
        'Social Movements',
        'Social Movements',
        'Analysis of movements advocating for social change and justice.'
    ),
    (
        @human_interaction_id,
        'Globalization',
        'Globalization',
        'Impact of global interconnectedness on local societies.'
    ),
    -- Sociology and Psychology
    (
        @human_interaction_id,
        'Sociology',
        'Sociology',
        'Study of social behavior, institutions, and society as a whole.'
    ),
    (
        @human_interaction_id,
        'Psychology',
        'Psychology',
        'Understanding human behavior, thoughts, and emotions within social contexts.'
    ),
    (
        @human_interaction_id,
        'Social Psychology',
        'Social Psychology',
        'Study of how individuals influence and are influenced by social environments.'
    );
COMMIT;
-- "Technology and Innovation"
SET @technology_innovation_id = (
        SELECT category_id
        FROM categories
        WHERE category_name = 'Technology and Innovation'
    );
INSERT INTO categories (
        category_parent_id,
        category_title,
        category_name,
        category_description
    )
VALUES -- General Technology
    (
        @technology_innovation_id,
        'Emerging Technologies',
        'Emerging Technologies',
        'Exploration of new and innovative technologies on the horizon.'
    ),
    (
        @technology_innovation_id,
        'Information Technology',
        'Information Technology',
        'Study of computer systems, software, and data management.'
    ),
    (
        @technology_innovation_id,
        'Artificial Intelligence',
        'Artificial Intelligence',
        'Understanding AI technologies and their applications in various fields.'
    ),
    (
        @technology_innovation_id,
        'Blockchain Technology',
        'Blockchain Technology',
        'Analysis of blockchain applications and its impact on industries.'
    ),
    -- Communication and Connectivity
    (
        @technology_innovation_id,
        'Telecommunications',
        'Telecommunications',
        'Study of communication systems and technologies.'
    ),
    (
        @technology_innovation_id,
        'Internet of Things (IoT)',
        'Internet of Things (IoT)',
        'Understanding interconnected devices and their applications.'
    ),
    (
        @technology_innovation_id,
        '5G Technology',
        '5G Technology',
        'Impact of 5G technology on communication and connectivity.'
    ),
    -- Engineering and Design
    (
        @technology_innovation_id,
        'Engineering Innovations',
        'Engineering Innovations',
        'Advancements in engineering practices and technologies.'
    ),
    (
        @technology_innovation_id,
        'Product Design',
        'Product Design',
        'Processes and methodologies in creating innovative products.'
    ),
    (
        @technology_innovation_id,
        'Sustainable Technology',
        'Sustainable Technology',
        'Technologies that promote environmental sustainability and efficiency.'
    ),
    -- Industry-Specific Technologies
    (
        @technology_innovation_id,
        'Healthcare Technology',
        'Healthcare Technology',
        'Technological advancements in healthcare and medical devices.'
    ),
    (
        @technology_innovation_id,
        'Financial Technology (FinTech)',
        'Financial Technology (FinTech)',
        'Innovations in financial services and technology.'
    ),
    (
        @technology_innovation_id,
        'Manufacturing Technology',
        'Manufacturing Technology',
        'Advancements in manufacturing processes and automation.'
    ),
    -- Future Trends and Ethical Considerations
    (
        @technology_innovation_id,
        'Future Trends',
        'Future Trends',
        'Predictions and analysis of future technological advancements.'
    ),
    (
        @technology_innovation_id,
        'Ethics in Technology',
        'Ethics in Technology',
        'Exploration of ethical issues related to technology and innovation.'
    ),
    (
        @technology_innovation_id,
        'Digital Transformation',
        'Digital Transformation',
        'Impact of technology on business processes and culture.'
    );
COMMIT;
-- "Creative Arts and Entertainment"
SET @creative_arts_entertainment_id = (
        SELECT category_id
        FROM categories
        WHERE category_name = 'Creative Arts and Entertainment'
    );
INSERT INTO categories (
        category_parent_id,
        category_title,
        category_name,
        category_description
    )
VALUES -- General Arts
    (
        @creative_arts_entertainment_id,
        'Visual Arts',
        'Visual Arts',
        'Forms of art that create visual works, such as painting and sculpture.'
    ),
    (
        @creative_arts_entertainment_id,
        'Performing Arts',
        'Performing Arts',
        'Art forms such as theater, dance, and music performed live.'
    ),
    (
        @creative_arts_entertainment_id,
        'Literary Arts',
        'Literary Arts',
        'Study of literature, poetry, and creative writing.'
    ),
    -- Entertainment
    (
        @creative_arts_entertainment_id,
        'Film and Cinema',
        'Film and Cinema',
        'Exploration of film-making and the impact of cinema on society.'
    ),
    (
        @creative_arts_entertainment_id,
        'Music',
        'Music',
        'Study of music genres, theory, and production.'
    ),
    (
        @creative_arts_entertainment_id,
        'Theater',
        'Theater',
        'Exploration of theatrical performances and dramatic arts.'
    ),
    (
        @creative_arts_entertainment_id,
        'Dance',
        'Dance',
        'Study of various dance forms and their cultural significance.'
    ),
    -- Digital Arts
    (
        @creative_arts_entertainment_id,
        'Digital Art',
        'Digital Art',
        'Art created or presented using digital technology.'
    ),
    (
        @creative_arts_entertainment_id,
        'Graphic Design',
        'Graphic Design',
        'Study of visual communication and design principles.'
    ),
    (
        @creative_arts_entertainment_id,
        'Animation',
        'Animation',
        'Techniques of creating moving images and animated films.'
    ),
    -- Cultural and Historical Aspects
    (
        @creative_arts_entertainment_id,
        'Cultural Arts',
        'Cultural Arts',
        'Study of arts as expressions of cultural identity.'
    ),
    (
        @creative_arts_entertainment_id,
        'Art History',
        'Art History',
        'Exploration of historical developments in the arts.'
    ),
    (
        @creative_arts_entertainment_id,
        'Art Criticism',
        'Art Criticism',
        'Analysis and evaluation of artistic works.'
    );
COMMIT;
-- "Leisure and Recreation"
SET @leisure_recreation_id = (
        SELECT category_id
        FROM categories
        WHERE category_name = 'Leisure and Recreation'
    );
INSERT INTO categories (
        category_parent_id,
        category_title,
        category_name,
        category_description
    )
VALUES -- General Leisure Activities
    (
        @leisure_recreation_id,
        'Outdoor Activities',
        'Outdoor Activities',
        'Activities that take place in natural environments, such as hiking and camping.'
    ),
    (
        @leisure_recreation_id,
        'Sports and Games',
        'Sports and Games',
        'Various organized games and sports activities.'
    ),
    (
        @leisure_recreation_id,
        'Travel and Tourism',
        'Travel and Tourism',
        'Exploration of travel destinations and tourism experiences.'
    ),
    -- Hobby and Entertainment
    (
        @leisure_recreation_id,
        'Arts and Crafts',
        'Arts and Crafts',
        'Creative activities involving making things by hand.'
    ),
    (
        @leisure_recreation_id,
        'Gardening',
        'Gardening',
        'Cultivation of plants for enjoyment and aesthetics.'
    ),
    (
        @leisure_recreation_id,
        'Reading and Literature',
        'Reading and Literature',
        'Exploration of books, literature, and the joy of reading.'
    ),
    -- Entertainment Activities
    (
        @leisure_recreation_id,
        'Entertainment and Events',
        'Entertainment and Events',
        'Attending concerts, festivals, and other social gatherings.'
    ),
    (
        @leisure_recreation_id,
        'Fitness and Wellness',
        'Fitness and Wellness',
        'Activities promoting physical health and mental well-being.'
    ),
    -- Family and Social Activities
    (
        @leisure_recreation_id,
        'Family Activities',
        'Family Activities',
        'Engaging in activities that strengthen family bonds.'
    ),
    (
        @leisure_recreation_id,
        'Social Clubs and Groups',
        'Social Clubs and Groups',
        'Participation in community and social organizations.'
    );
COMMIT;
-- "Man-made Constructs"
SET @man_made_constructs_id = (
        SELECT category_id
        FROM categories
        WHERE category_name = 'Man-made Constructs'
    );
INSERT INTO categories (
        category_parent_id,
        category_title,
        category_name,
        category_description
    )
VALUES -- General Structures
    (
        @man_made_constructs_id,
        'Architecture',
        'Architecture',
        'The art and science of designing and constructing buildings and other structures.'
    ),
    (
        @man_made_constructs_id,
        'Infrastructure',
        'Infrastructure',
        'The basic physical systems and structures needed for the operation of a society.'
    ),
    -- Transportation and Communication
    (
        @man_made_constructs_id,
        'Transportation Systems',
        'Transportation Systems',
        'Systems and methods for the movement of people and goods.'
    ),
    (
        @man_made_constructs_id,
        'Communication Networks',
        'Communication Networks',
        'Systems for communication, including telecommunication and the internet.'
    ),
    -- Technological Structures
    (
        @man_made_constructs_id,
        'Manufacturing and Industry',
        'Manufacturing and Industry',
        'Processes and structures related to the production of goods.'
    ),
    (
        @man_made_constructs_id,
        'Urban Development',
        'Urban Development',
        'Planning and development of urban areas and cities.'
    ),
    -- Industry and Infrastructure
    (
        @man_made_constructs_id,
        'Energy Systems',
        'Energy Systems',
        'Systems for producing, distributing, and consuming energy.'
    ),
    (
        @man_made_constructs_id,
        'Waste Management',
        'Waste Management',
        'Systems for managing waste and recycling.'
    ),
    -- Economic Structures
    (
        @man_made_constructs_id,
        'Financial Institutions',
        'Financial Institutions',
        'Organizations that provide financial services to individuals and businesses.'
    ),
    (
        @man_made_constructs_id,
        'Legal Systems',
        'Legal Systems',
        'Frameworks and institutions for law and governance.'
    );
COMMIT;
-- "Environment and Sustainability"
SET @environment_and_sustainability_id = (
        SELECT category_id
        FROM categories
        WHERE category_name = 'Environment and Sustainability'
    );
INSERT INTO categories (
        category_parent_id,
        category_title,
        category_name,
        category_description
    )
VALUES -- General Environment
    (
        @environment_and_sustainability_id,
        'Environmental Science',
        'Environmental Science',
        'Study of the interactions between the physical, chemical, and biological components of the environment.'
    ),
    -- Ecosystems
    (
        @environment_and_sustainability_id,
        'Ecosystem Management',
        'Ecosystem Management',
        'Sustainable management of ecosystems to maintain biodiversity and ecosystem services.'
    ),
    -- Climate Change
    (
        @environment_and_sustainability_id,
        'Climate Change',
        'Climate Change',
        'Study of climate variations, their causes, and impacts on the environment and society.'
    ),
    -- Sustainable Energy
    (
        @environment_and_sustainability_id,
        'Sustainable Energy',
        'Sustainable Energy',
        'Energy sources that are renewable and have minimal impact on the environment.'
    ),
    -- Waste Management
    (
        @environment_and_sustainability_id,
        'Waste Management',
        'Waste Management',
        'Processes for managing waste materials and promoting recycling.'
    ),
    -- Conservation and Biodiversity
    (
        @environment_and_sustainability_id,
        'Conservation Biology',
        'Conservation Biology',
        'Study of the preservation of biodiversity and the management of natural resources.'
    ),
    -- Sustainable Agriculture
    (
        @environment_and_sustainability_id,
        'Sustainable Agriculture',
        'Sustainable Agriculture',
        'Farming practices that maintain the health of the environment and ecosystems.'
    ),
    -- Water Management
    (
        @environment_and_sustainability_id,
        'Water Resource Management',
        'Water Resource Management',
        'Management of water resources to ensure sustainability and accessibility.'
    ),
    -- Environmental Policies
    (
        @environment_and_sustainability_id,
        'Environmental Policies',
        'Environmental Policies',
        'Regulations and policies aimed at protecting the environment and promoting sustainability.'
    );
COMMIT;
-- "Learning and Education"
SET @learning_and_education_id = (
        SELECT category_id
        FROM categories
        WHERE category_name = 'Learning and Education'
    );
INSERT INTO categories (
        category_parent_id,
        category_title,
        category_name,
        category_description
    )
VALUES -- Education Methods
    (
        @learning_and_education_id,
        'Teaching Methods',
        'Teaching Methods',
        'Various pedagogical approaches and techniques used in education.'
    ),
    -- Educational Technology
    (
        @learning_and_education_id,
        'Educational Technology',
        'Educational Technology',
        'Use of technology to enhance teaching and learning processes.'
    ),
    -- Lifelong Learning
    (
        @learning_and_education_id,
        'Lifelong Learning',
        'Lifelong Learning',
        'Continuous, self-motivated pursuit of knowledge for personal or professional development.'
    ),
    -- Special Education
    (
        @learning_and_education_id,
        'Special Education',
        'Special Education',
        'Education tailored to meet the needs of students with disabilities.'
    ),
    -- Education Policy
    (
        @learning_and_education_id,
        'Education Policy',
        'Education Policy',
        'Guidelines and regulations governing educational systems and institutions.'
    ),
    -- Higher Education
    (
        @learning_and_education_id,
        'Higher Education',
        'Higher Education',
        'Post-secondary education, including colleges and universities.'
    ),
    -- Preschool Education
    (
        @learning_and_education_id,
        'Early Childhood Education',
        'Early Childhood Education',
        'Education focused on children from birth to eight years old.'
    ),
    -- Educational Evaluation
    (
        @learning_and_education_id,
        'Assessment and Evaluation',
        'Assessment and Evaluation',
        'Methods of evaluating student learning and educational programs.'
    ),
    -- Online Learning
    (
        @learning_and_education_id,
        'Online Learning',
        'Online Learning',
        'Education delivered via the internet, often through courses and programs.'
    ),
    -- Foreign Language Education
    (
        @learning_and_education_id,
        'Foreign Language Education',
        'Foreign Language Education',
        'Teaching and learning of foreign languages.'
    );
COMMIT;