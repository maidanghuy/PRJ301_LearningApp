-- Chèn dữ liệu vào bảng Users (Người dùng)
INSERT INTO Users
    (role, username, password, email, dateOfBirth, status)
VALUES
    ('Student', 'huymai', 'hashed_password_123', 'huymai@example.com', '2004-05-15', 'Active'),
    ('Student', 'nguyenvan', 'hashed_password_456', 'nguyenvan@example.com', '2003-07-20', 'Active'),
    ('Teacher', 'phamthanh', 'hashed_password_789', 'phamthanh@example.com', '1985-11-30', 'Active'),
    ('Student', 'tranbao', 'hashed_password_321', 'tranbao@example.com', '2005-01-10', 'Active'),
    ('Teacher', 'lequoc', 'hashed_password_654', 'lequoc@example.com', '1990-09-25', 'Inactive');

-- Chèn dữ liệu vào bảng Courses (Khóa học ngoại ngữ)
INSERT INTO Courses
    (courseName, description, level)
VALUES
    ('Tiếng Anh Cơ Bản', 'Khóa học dành cho người mới bắt đầu học tiếng Anh, bao gồm phát âm, từ vựng và ngữ pháp cơ bản.', 'Beginner'),
    ('Tiếng Anh Giao Tiếp', 'Giúp học viên cải thiện khả năng giao tiếp hàng ngày bằng tiếng Anh.', 'Intermediate'),
    ('Luyện Thi IELTS', 'Khóa học cung cấp chiến lược và bài tập thực hành cho kỳ thi IELTS.', 'Advanced'),
    ('Tiếng Nhật N5', 'Khóa học giúp học viên làm quen với bảng chữ cái Hiragana, Katakana và ngữ pháp cơ bản.', 'Beginner'),
    ('Tiếng Nhật N4', 'Mở rộng vốn từ vựng, ngữ pháp và luyện tập kỹ năng đọc hiểu tiếng Nhật ở trình độ N4.', 'Intermediate');

UPDATE Courses
SET 
    details = 'Master advanced strategies for all TOEIC Reading and Listening question types to maximize your score;
    Develop efficient time management and test-taking techniques for high accuracy under exam conditions;
    Improve performance in complex TOEIC Listening parts, including Part 3 (Conversations) and Part 4 (Talks);
    Strengthen reading comprehension skills for double passages and inference-based questions;
    Expand business vocabulary and grammatical accuracy for sentence completion and error recognition;
    The TOEIC Preparation Course is designed for students aiming to achieve a TOEIC score of 750+ for career or academic purposes;
    This course provides intensive practice with simulated TOEIC exams and personalized feedback from experienced instructors;
    The tuition fee for this course is 6,500,000 VND / 3.5 months, including full access to study materials, mock tests, and detailed corrections;
    This course is especially suitable for students who want to reach their target TOEIC score in the shortest time possible.',

    learningPathway = '{
        "Vocabulary": {
            "topics": "Advanced business contexts, financial reports, corporate communication",
            "phrases": "High-frequency TOEIC idioms, formal expressions",
            "memorization": "Utilize context-based memorization techniques",
            "expansion": "Learn specialized vocabulary for different TOEIC topics"
        },
        "Grammar": {
            "sentence_structure": "Mastery of complex sentence structures in formal writing",
            "tenses": "Perfect tense usage in TOEIC, modal verbs for formal contexts",
            "important_components": "Grammar rules for error correction and sentence restructuring"
        },
        "Reading": {
            "familiarization": "Deep understanding of all TOEIC Reading question types",
            "skimming_scanning": "Speed reading techniques for quick information extraction",
            "common_mistakes": "Avoid common traps in inference and paraphrased questions"
        },
        "Listening": {
            "business_scenarios": "Handle complex business meetings, negotiations, and briefings",
            "longer_discussions": "Develop strategies for following extended conversations and announcements",
            "test_familiarization": "Perfect your approach to answering TOEIC listening questions under time pressure"
        },
        "Practice_Tests": {
            "TOEIC_tests": "Full-length simulated TOEIC exams with score tracking",
            "detailed_explanations": "Step-by-step breakdown of correct and incorrect answers"
        }
    }'
WHERE  [courseID]= 3;

UPDATE Courses
SET 
    details = 'Learn essential Japanese skills to build a strong foundation in grammar, vocabulary, and pronunciation;
    Master Hiragana and Katakana, the two fundamental Japanese writing systems;
    Understand basic sentence structures and essential kanji for daily conversations;
    Improve listening and speaking skills for common real-life situations, such as self-introduction and shopping;
    Develop confidence in reading simple texts and understanding basic Japanese dialogues;
    The Japanese N5 Course is designed for beginners who want to start learning Japanese from scratch;
    This course prepares students for the JLPT N5 exam by covering all key language components;
    The tuition fee for this course is 4,000,000 VND / 3 months, including study materials and personalized feedback from experienced instructors;
    This course is especially suitable for students who want to pursue higher levels of Japanese proficiency, such as N4 and beyond.',

    learningPathway = '{
        "Vocabulary": {
            "topics": "Daily life, greetings, numbers, time expressions",
            "phrases": "Common Japanese expressions and polite phrases",
            "memorization": "Use Flashcards and mnemonics to learn vocabulary",
            "expansion": "Gradually build a strong vocabulary base for N5"
        },
        "Grammar": {
            "sentence_structure": "Basic Japanese sentence patterns",
            "particles": "Key Japanese particles and their functions",
            "tenses": "Present, past, and negative forms in Japanese"
        },
        "Reading": {
            "hiragana_katakana": "Master reading and writing in Hiragana and Katakana",
            "simple_texts": "Read short passages, signs, and basic instructions",
            "kanji": "Learn essential kanji characters for N5"
        },
        "Listening": {
            "basic_listening": "Understand simple spoken Japanese in daily conversations",
            "real_conversations": "Practice listening to native speakers in common scenarios",
            "test_familiarization": "Get familiar with JLPT N5 listening question types"
        },
        "Practice_Tests": {
            "JLPT_tests": "Simulated JLPT N5 practice tests",
            "detailed_explanations": "Step-by-step analysis of answers and grammar explanations"
        }
    }'
WHERE [courseID] = 4;

UPDATE Courses
SET 
    details = 'Develop and refine strategies for handling all TOEIC Reading and Listening question types at an intermediate level;
    Improve time management, note-taking, and skimming-scanning techniques for better performance;
    Enhance accuracy and confidence in answering Part 3 and Part 4 of the Listening section;
    Gain deeper insights into grammar structures, collocations, and vocabulary used in TOEIC exams;
    The TOEIC Intermediate Course is designed for students who have a basic foundation in English and want to improve their TOEIC scores;
    This course focuses on enhancing comprehension, fluency, and business-related communication skills;
    The TOEIC Intermediate Course will help students transition to TOEIC Advanced levels with better test-taking strategies. The tuition fee for this course is 5,000,000 VND / 3 months, including study materials and detailed feedback from experienced instructors;
    This course is especially suitable for students aiming for a TOEIC score of 550-750 and seeking to improve their professional English skills.',
    
    learningPathway = '{
        "Vocabulary": {
            "topics": "Business emails, reports, workplace interactions",
            "phrases": "Advanced TOEIC phrases, idiomatic expressions",
            "memorization": "Use mnemonics and context-based learning",
            "expansion": "Learn vocabulary through TOEIC-style reading passages"
        },
        "Grammar": {
            "sentence_structure": "Complex sentence structures in business contexts",
            "tenses": "Advanced use of tenses in TOEIC",
            "important_components": "Grammar for error identification and sentence completion"
        },
        "Reading": {
            "familiarization": "Recognize different question types in TOEIC Reading",
            "skimming_scanning": "Master advanced skimming and scanning skills",
            "common_mistakes": "Avoid common pitfalls in double passages and inference questions"
        },
        "Listening": {
            "business_scenarios": "Understand conversations in office, meetings, and negotiations",
            "longer_discussions": "Analyze Part 3 & Part 4 dialogues effectively",
            "test_familiarization": "Develop techniques for predicting answers"
        },
        "Practice_Tests": {
            "TOEIC_tests": "Official TOEIC practice test series for intermediate learners",
            "detailed_explanations": "In-depth answer analysis and test-taking tips"
        }
    }'
WHERE [courseID] = 2;

UPDATE Courses
SET 
    details = 'Master and practice strategies for most Reading and Listening question types, from basic to advanced;
    Gain a solid understanding of how to approach most Writing tasks, from basic to advanced;
    Enhance focus, time management, and strategic application through real IELTS test simulations in all sections;
    Familiarize yourself with the IELTS Computer Test format;
    The IELTS Beginner Course is designed for students who are new to English and want to improve their skills in preparation for the IELTS exam;
    This course helps students build a strong foundation in grammar, vocabulary, pronunciation, and basic communication skills, enabling them to express ideas clearly and confidently in English;
    The IELTS Beginner Course will help students confidently transition to IELTS Intermediate and more advanced courses. The tuition fee for this course is 4,500,000 VND / 2.5 months, including study materials and detailed Writing feedback from experienced instructors;
    This course is especially suitable for students who want to start from scratch and build a solid IELTS foundation, making it easier to develop their skills in more advanced courses',
    learningPathway = '{
        "Vocabulary": {
            "topics": "Daily topics",
            "phrases": "Phrasal verbs, noun phrases",
            "memorization": "Memorize vocabulary using Flashcards",
            "expansion": "Expand vocabulary"
        },
        "Grammar": {
            "basic_sentence_structure": "Basic sentence structures",
            "tenses": "Fundamental English tenses",
            "important_components": "Important grammatical components"
        },
        "Reading": {
            "familiarization": "Get familiar with different question types",
            "skimming_scanning": "Skimming and detailed reading skills",
            "common_mistakes": "Identify common mistakes and how to fix them"
        },
        "Listening": {
            "basic_listening": "Listen to simple words and sentences",
            "real_conversations": "Listen to real-life conversations",
            "test_familiarization": "Get familiar with basic question types"
        },
        "Practice_Tests": {
            "Cambridge_tests": "Cambridge IELTS Test Series 9-16",
            "detailed_explanations": "Detailed answers and explanations"
        }
    }'
WHERE [courseID]= 1;

UPDATE Courses
SET 
    details = 'Expand your Japanese proficiency by building on the foundation of N5 with more advanced grammar, vocabulary, and kanji;
    Improve reading and listening skills to understand longer and more complex sentences;
    Learn key sentence patterns used in JLPT N4 to communicate more effectively in daily life and work;
    Strengthen speaking and writing skills through structured exercises and real-life applications;
    Gain confidence in handling JLPT N4-level questions, including reading comprehension and listening tasks;
    The Japanese N4 Course is designed for learners who have completed N5 or have basic knowledge of Japanese;
    This course provides structured lessons to help students prepare for the JLPT N4 exam efficiently;
    The tuition fee for this course is 4,500,000 VND / 3.5 months, including study materials and personalized feedback from experienced instructors;
    This course is especially suitable for students who want to advance their Japanese skills and aim for N3 and beyond.',

    learningPathway = '{
        "Vocabulary": {
            "topics": "Workplace, travel, social interactions, daily routines",
            "phrases": "Frequently used N4 expressions and idiomatic phrases",
            "memorization": "Use sentence-based learning for vocabulary retention",
            "expansion": "Increase vocabulary range through JLPT-style texts"
        },
        "Grammar": {
            "sentence_structure": "Intermediate Japanese sentence patterns",
            "particles": "Advanced usage of Japanese particles",
            "tenses": "Complex verb conjugations, including causative and passive forms"
        },
        "Reading": {
            "short_articles": "Read and understand short news articles and essays",
            "dialogues": "Interpret longer and more complex dialogues",
            "kanji": "Learn additional kanji characters required for JLPT N4"
        },
        "Listening": {
            "daily_conversations": "Understand conversations in more natural speech",
            "real-world_scenarios": "Comprehend spoken Japanese in various contexts, such as shopping and work",
            "test_familiarization": "Practice JLPT N4 listening comprehension with simulated tests"
        },
        "Practice_Tests": {
            "JLPT_tests": "Full-length simulated JLPT N4 exams",
            "detailed_explanations": "Comprehensive explanations for answers and grammar points"
        }
    }'
WHERE [courseID] = 5;


UPDATE Courses
SET 
    commitment = 'G-EASY guarantees a minimum TOEIC score of 350+, and if you study well, you can achieve up to 550+ after completing the TOEIC Beginner course; 
    This commitment applies to almost 100% of students, except in the following cases: 
    - Not studying, not completing assignments, or being absent too frequently. 
    - Missing important lessons in the course; 
    The commitment is valid within the official course duration (2.5 months), meaning we ensure you reach your target score without needing to retake the course multiple times. 
    (However, if you study seriously but do not reach the guaranteed score, you will be eligible for a free retake);
    The minimum score is just a baseline—if you put in extra effort, you can achieve even higher results; 
    Some students who completed the TOEIC Beginner course at G-EASY took the official TOEIC test and scored over 600, even though their initial goal was just 350-400 for graduation or job application requirements;'
WHERE courseID = 1;

UPDATE Courses
SET 
    commitment = 'G-EASY guarantees a minimum TOEIC score of 550+, and if you study well, you can achieve up to 750+ after completing the TOEIC Intermediate course; 
    This commitment applies to almost 100% of students, except in the following cases: 
    - Not studying, not completing assignments, or being absent too frequently. 
    - Missing important lessons in the course; 
    The commitment is valid within the official course duration (3 months), meaning we ensure you reach your target score without needing to retake the course multiple times. 
    (However, if you study seriously but do not reach the guaranteed score, you will be eligible for a free retake);
    The minimum score is just a baseline—if you put in extra effort, you can achieve even higher results;
    Some students who completed the TOEIC Intermediate course at G-EASY took the official TOEIC test and scored over 800, even though their initial goal was just 550-600 for job applications or graduation requirements;'
WHERE courseID = 2;

UPDATE Courses
SET 
    commitment = 'G-EASY guarantees a minimum TOEIC score of 750+, and if you study well, you can achieve up to 900+ after completing the TOEIC Preparation course;
    This commitment applies to almost 100% of students, except in the following cases: 
    - Not studying, not completing assignments, or being absent too frequently. 
    - Missing important lessons in the course; 
    The commitment is valid within the official course duration (3.5 months), meaning we ensure you reach your target score without needing to retake the course multiple times. 
    (However, if you study seriously but do not reach the guaranteed score, you will be eligible for a free retake); 
    The minimum score is just a baseline—if you put in extra effort, you can achieve even higher results; 
    Many students who completed the TOEIC Preparation course at G-EASY took the official TOEIC test and scored over 900, even though their initial goal was just 750-800 for career advancement or international job opportunities;'
WHERE courseID = 3;

UPDATE Courses
SET 
    commitment = 'G-EASY guarantees that after completing the Japanese N5 course, you will have a solid foundation in Japanese, including grammar, vocabulary, and communication skills. 
    If you study well, you can confidently pass the JLPT N5 exam;
    This commitment applies to almost 100% of students, except in the following cases:  
    - Not studying, not completing assignments, or being absent too frequently.  
    - Missing important lessons in the course;  
    The commitment is valid within the official course duration (3 months), ensuring you achieve your learning goals efficiently.  
    (However, if you study seriously but do not pass the JLPT N5 exam, you will be eligible for a free retake);  
    The minimum goal is to pass N5, but if you put in extra effort, you can achieve higher proficiency and be well-prepared for the JLPT N4 level;  
    Many students who completed the Japanese N5 course at G-EASY successfully passed the JLPT N5 and confidently continued their Japanese learning journey to higher levels;'
WHERE courseID = 4;

UPDATE Courses
SET 
    commitment = 'G-EASY guarantees that after completing the Japanese N4 course, you will significantly improve your grammar, vocabulary, and communication skills.  
    If you study well, you can confidently pass the JLPT N4 exam;  
    This commitment applies to almost 100% of students, except in the following cases:  
    - Not studying, not completing assignments, or being absent too frequently.  
    - Missing important lessons in the course;  
    The commitment is valid within the official course duration (3.5 months), ensuring you achieve your learning goals efficiently.  
    (However, if you study seriously but do not pass the JLPT N4 exam, you will be eligible for a free retake);  
    The minimum goal is to pass N4, but if you put in extra effort, you can achieve higher proficiency and be well-prepared for the JLPT N3 level;  
    Many students who completed the Japanese N4 course at G-EASY successfully passed the JLPT N4 and confidently continued their Japanese learning journey to higher levels;'
WHERE courseID = 5;


UPDATE Courses
SET 
    courseName = CASE 
        WHEN courseID = 1 THEN 'TOEIC Beginner'
        WHEN courseID = 2 THEN 'TOEIC Intermediate'
        WHEN courseID = 3 THEN 'TOEIC Preparation'
        WHEN courseID = 4 THEN 'Japanese N5'
        WHEN courseID = 5 THEN 'Japanese N4'
    END,
    description = CASE 
        WHEN courseID = 1 THEN 'A course designed for beginners preparing for TOEIC, covering pronunciation, vocabulary, and basic grammar.'
        WHEN courseID = 2 THEN 'Helps students improve their communication and listening skills for TOEIC at an intermediate level.'
        WHEN courseID = 3 THEN 'Provides strategies and practice exercises to help students achieve a high score on the TOEIC exam.'
        WHEN courseID = 4 THEN 'Helps students get familiar with Hiragana, Katakana, and basic grammar in Japanese, suitable for N5 level.'
        WHEN courseID = 5 THEN 'Expands vocabulary, grammar, and reading comprehension skills for the Japanese Language Proficiency Test (JLPT) at the N4 level.'
    END
WHERE courseID IN (1, 2, 3, 4, 5);

UPDATE Courses 
SET linkimg = 
    CASE 
        WHEN courseID = 5 THEN './assets/images/course/Japanese-N4.jpg'
        WHEN courseID = 4 THEN './assets/images/course/Japanese-N5.jpg'
        WHEN courseID = 3 THEN './assets/images/course/toeic.png'
        WHEN courseID = 2 THEN './assets/images/course/toeic-smartcom-english_optimized.jpg'
		WHEN courseID = 1 THEN './assets/images/course/toeic-smartcom-english_optimized.jpg'
        ELSE linkimg
    END;
