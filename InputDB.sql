-- Chèn dữ liệu vào bảng Users (Người dùng)
INSERT INTO Users
    (role, username, password, email, dateOfBirth, status)
VALUES
    ('Student', 'maidanghuy', '123123', 'maidanghuy@example.com', '2004-05-15', 'Active'),
    ('Student', 'nguyenlequan', '123123', 'nguyenlequan@example.com', '2003-07-20', 'Active'),
    ('Teacher', 'hoangminhhien', '123123', 'hoangminhhien@example.com', '1985-11-30', 'Active'),
    ('Student', 'trandinhquy', '123123', 'trandinhquy@example.com', '2005-01-10', 'Active'),
    ('Teacher', 'admin', '123123', 'admin@example.com', '1990-09-25', 'Inactive');

-- Chèn dữ liệu vào bảng Courses (Khóa học ngoại ngữ)
-- Insert data into the Courses table
INSERT INTO Courses
    (courseName, description, level)
VALUES
    ('Basic English', 'A course designed for beginners to learn English, including pronunciation, vocabulary, and basic grammar.', 'Beginner'),
    ('English Communication', 'Helps learners improve their daily communication skills in English.', 'Intermediate'),
    ('IELTS Preparation', 'Provides strategies and practice exercises for the IELTS exam.', 'Advanced'),
    ('Japanese N5', 'Introduces learners to the Hiragana, Katakana alphabets and basic grammar.', 'Beginner'),
    ('Japanese N4', 'Expands vocabulary, grammar, and reading comprehension skills for the N4 level.', 'Intermediate');

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

    learningPathway = '"Vocabulary: Advanced business contexts, financial reports, corporate communication / High-frequency TOEIC idioms, formal expressions / Utilize context-based memorization techniques / Learn specialized vocabulary for different TOEIC topics",
"Grammar: Mastery of complex sentence structures in formal writing / Perfect tense usage in TOEIC, modal verbs for formal contexts / Grammar rules for error correction and sentence restructuring",
"Reading: Deep understanding of all TOEIC Reading question types / Speed reading techniques for quick information extraction / Avoid common traps in inference and paraphrased questions",
"Listening: Handle complex business meetings, negotiations, and briefings / Develop strategies for following extended conversations and announcements / Perfect your approach to answering TOEIC listening questions under time pressure",
"Practice_Tests: Full-length simulated TOEIC exams with score tracking / Step-by-step breakdown of correct and incorrect answers"'
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

    learningPathway = '
    "Vocabulary: Daily life, greetings, numbers, time expressions / Common Japanese expressions and polite phrases / Use Flashcards and mnemonics to learn vocabulary / Gradually build a strong vocabulary base for N5",
    "Grammar: Basic Japanese sentence patterns / Key Japanese particles and their functions / Present, past, and negative forms in Japanese",
    "Reading: Master reading and writing in Hiragana and Katakana / Read short passages, signs, and basic instructions / Learn essential kanji characters for N5",
    "Listening: Understand simple spoken Japanese in daily conversations / Practice listening to native speakers in common scenarios / Get familiar with JLPT N5 listening question types",
    "Practice_Tests: Simulated JLPT N5 practice tests / Step-by-step analysis of answers and grammar explanations"'

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
    
    learningPathway = '
    "Vocabulary: Business emails, reports, workplace interactions / Advanced TOEIC phrases, idiomatic expressions / Use mnemonics and context-based learning / Learn vocabulary through TOEIC-style reading passages",
    "Grammar: Complex sentence structures in business contexts / Advanced use of tenses in TOEIC / Grammar for error identification and sentence completion",
    "Reading: Recognize different question types in TOEIC Reading / Master advanced skimming and scanning skills / Avoid common pitfalls in double passages and inference questions",
    "Listening: Understand conversations in office, meetings, and negotiations / Analyze Part 3 & Part 4 dialogues effectively / Develop techniques for predicting answers",
    "Practice_Tests: Official TOEIC practice test series for intermediate learners / In-depth answer analysis and test-taking tips"
'
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
    learningPathway = '
    "Vocabulary: Daily topics / Phrasal verbs, noun phrases / Memorize vocabulary using Flashcards / Expand vocabulary",
    "Grammar: Basic sentence structures / Fundamental English tenses / Important grammatical components",
    "Reading: Get familiar with different question types / Skimming and detailed reading skills / Identify common mistakes and how to fix them",
    "Listening: Listen to simple words and sentences / Listen to real-life conversations / Get familiar with basic question types",
    "Practice_Tests: Cambridge IELTS Test Series 9-16 / Detailed answers and explanations"
'

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

    learningPathway = '
    "Vocabulary: Workplace, travel, social interactions, daily routines /Frequently used N4 expressions and idiomatic phrases /Use sentence-based learning for vocabulary retention /Increase vocabulary range through JLPT-style texts",
    "Grammar: Intermediate Japanese sentence patterns, advanced usage of Japanese particles, complex verb conjugations (causative and passive forms) /Advanced usage of Japanese particles/Complex verb conjugations, including causative and passive forms",
    "Reading: Read and understand short news articles and essays/ Interpret longer and more complex dialogues/ learn additional kanji characters required for JLPT N4",
    "Listening: Understand conversations in more natural speech/ comprehend spoken Japanese in various contexts (shopping, work)/ practice JLPT N4 listening comprehension with simulated tests",
    "Practice_Tests: Full-length simulated JLPT N4 exams/comprehensive explanations for answers and grammar points"'

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
        WHEN courseID = 5 THEN '/course/Japanese-N4.jpg'
        WHEN courseID = 4 THEN '/course/Japanese-N5.jpg'
        WHEN courseID = 3 THEN '/course/toeic.png'
        WHEN courseID = 2 THEN '/course/toeic-smartcom-english_optimized.jpg'
		WHEN courseID = 1 THEN '/course/toeic-smartcom-english_optimized.jpg'
        ELSE linkimg
    END;


INSERT INTO Content
    (contentType, title, filePath, videoPath, audioFile, source, example, describe, createdAt)
VALUES
    -- Vocabulary (chỉ có filePath - PDF tài liệu từ vựng)
    ('Vocabulary', 'Common IELTS Vocabulary', 'files/vocabulary_common.pdf', NULL, NULL, NULL, NULL, 'Tài liệu từ vựng IELTS phổ biến', GETDATE()),
    ('Vocabulary', 'IELTS Academic Word List', 'files/ielts_word_list.pdf', NULL, NULL, NULL, NULL, 'Danh sách từ vựng học thuật IELTS', GETDATE()),

    -- Grammar (có videoPath - Video YouTube + filePath - PDF tài liệu ngữ pháp)
    ('Grammar', 'IELTS Grammar Basics', 'files/ielts_grammar_basics.pdf', 'https://www.youtube.com/embed/CfU7rIZPnNY?si=Fy6R3f-7AEkEqArK', NULL, NULL, NULL, 'Video hướng dẫn cơ bản về ngữ pháp IELTS', GETDATE()),
    ('Grammar', 'Advanced IELTS Grammar', 'files/advanced_ielts_grammar.pdf', 'https://www.youtube.com/embed/BaX7xwa8Vh4?si=YOokbhdmd2wtMkTQ', NULL, NULL, NULL, 'Hướng dẫn ngữ pháp nâng cao trong IELTS', GETDATE()),

    -- Reading (chỉ có filePath - PDF tài liệu đọc hiểu)
    ('Reading', 'IELTS Reading Strategies', 'files/reading_strategies.pdf', NULL, NULL, NULL, NULL, 'Hướng dẫn chiến lược làm bài đọc IELTS', GETDATE()),
    ('Reading', 'IELTS Reading Practice Tests', 'files/ielts_reading_tests.pdf', NULL, NULL, NULL, NULL, 'Bộ đề thực hành đọc IELTS', GETDATE()),

    -- Listening (có audioFile - file audio + filePath - transcript)
    ('Listening', 'IELTS Listening Test 1', 'files/listening_test1_transcript.pdf', NULL, 'audio/listening_test1.mp3', NULL, NULL, 'Bài kiểm tra nghe IELTS với transcript', GETDATE()),
    ('Listening', 'IELTS Listening Tips', 'files/listening_tips.pdf', NULL, 'audio/listening_tips.mp3', NULL, NULL, 'Mẹo luyện nghe hiệu quả cho IELTS', GETDATE());


INSERT INTO Lesson
    (courseID, lessonTitle, content, duration, createdAt)
VALUES
    (1, 'IELTS Vocabulary Essentials', 'Lesson on essential vocabulary for IELTS', 45, GETDATE()),
    (1, 'Grammar for IELTS Writing', 'Compilation of essential grammar for the Writing section', 50, GETDATE()),
    (1, 'Effective Reading Techniques', 'Techniques for effective reading comprehension in IELTS', 60, GETDATE()),
    (1, 'IELTS Listening Strategies', 'Effective strategies for IELTS listening', 40, GETDATE());

INSERT INTO Lesson_Content
    (lessonID, contentID)
VALUES
    -- Link vocabulary lesson with vocabulary content
    (1, 1),
    (1, 2),

    -- Link grammar lesson with grammar content
    (2, 3),
    (2, 4),

    -- Link reading comprehension lesson with reading content
    (3, 5),
    (3, 6),

    -- Link listening lesson with listening content
    (4, 7),
    (4, 8);