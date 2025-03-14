CREATE DATABASE ElearningDB;
GO
USE ElearningDB;
GO

-- Bảng User (Người dùng - Học viên/Giảng viên)
CREATE TABLE Users
(
    userID INT IDENTITY(1,1) PRIMARY KEY,
    -- Mã người dùng
    role NVARCHAR(50) NOT NULL,
    -- Vai trò (học viên, giảng viên)
    username NVARCHAR(100) UNIQUE NOT NULL,
    -- Tên đăng nhập
    password NVARCHAR(255) NOT NULL,
    -- Mật khẩu
    email NVARCHAR(100) UNIQUE NOT NULL,
    -- Email người dùng
    dateOfBirth DATE,
    -- Ngày sinh
    status NVARCHAR(20),
    -- Trạng thái (hoạt động, bị khóa)
    createdAt DATETIME DEFAULT GETDATE(),
    -- Ngày tạo tài khoản
    updatedAt DATETIME DEFAULT GETDATE()
    -- Ngày cập nhật gần nhất
);

-- Bảng Courses (Khóa học)
CREATE TABLE Courses
(
    courseID INT IDENTITY(1,1) PRIMARY KEY,
    -- Mã khóa học
    courseName NVARCHAR(255) NOT NULL,
    -- Tên khóa học
    description NVARCHAR(MAX),
    -- Mô tả khóa học
    level NVARCHAR(50),
    -- Trình độ (Cơ bản, Trung cấp, Nâng cao)
    createdAt DATETIME DEFAULT GETDATE(),
    -- Ngày tạo khóa học
    updatedAt DATETIME DEFAULT GETDATE()
    -- Ngày cập nhật khóa hoc
    -- Ngày cập nhật khóa hoc
);

ALTER TABLE Courses 
ADD 
    details NVARCHAR(MAX), 
    -- Thông tin chi tiết về khóa học

    learningPathway NVARCHAR(MAX) 
    -- Lộ trình học (lưu dưới dạng JSON)

;

ALTER TABLE Courses 
ADD 
	commitment  NVARCHAR(MAX) 
;


ALTER TABLE Courses 
ADD 
    linkimg NVARCHAR(MAX)
    -- Thông tin chi tiết về khóa học
;
-- Bảng User_Course (Liên kết người dùng và khóa học)
CREATE TABLE User_Course
(
    userID INT,
    -- Mã người dùng
    courseID INT,
    -- Mã khóa học
    enrollDate DATE DEFAULT GETDATE(),
    -- Ngày đăng ký học
    progress DECIMAL(5,2) DEFAULT 0,
    -- Tiến độ hoàn thành (%)
    PRIMARY KEY (userID, courseID),
    FOREIGN KEY (userID) REFERENCES Users(userID) ON DELETE CASCADE,
    FOREIGN KEY (courseID) REFERENCES Courses(courseID) ON DELETE CASCADE
);

-- Bảng Lesson (Bài học)
CREATE TABLE Lesson
(
    lessonID INT IDENTITY(1,1) PRIMARY KEY,
    -- Mã bài học
    courseID INT NOT NULL,
    -- Mã khóa học liên kết
    lessonTitle NVARCHAR(255) NOT NULL,
    -- Tiêu đề bài học
    content NVARCHAR(MAX),
    -- Nội dung bài học
    duration INT,
    -- Thời lượng (phút)
    createdAt DATETIME DEFAULT GETDATE(),
    -- Ngày tạo bài học
    FOREIGN KEY (courseID) REFERENCES Courses(courseID) ON DELETE CASCADE
);

-- Bảng Content (Nội dung giảng dạy)
CREATE TABLE Content
(
    contentID INT IDENTITY(1,1) PRIMARY KEY,
    -- Mã nội dung
    contentType NVARCHAR(50) NOT NULL,
    -- Loại nội dung (video, tài liệu, âm thanh)
    title NVARCHAR(255),
    -- Tiêu đề nội dung
    filePath NVARCHAR(255),
    -- Đường dẫn tài liệu đính kèm
    videoPath NVARCHAR(255),
    -- Đường dẫn video
    audioFile NVARCHAR(255),
    -- Đường dẫn file âm thanh
    source NVARCHAR(MAX),
    -- Tài liệu tham khảo
    example NVARCHAR(MAX),
    -- Ví dụ minh họa
    createdAt DATETIME DEFAULT GETDATE(),
    -- Ngày tạo nội dung
    describe NVARCHAR(MAX)
);

-- Bảng Lesson_Content (Liên kết bài học với nội dung)
CREATE TABLE Lesson_Content
(
    lessonID INT,
    -- Mã bài học
    contentID INT,
    -- Mã nội dung
    PRIMARY KEY (lessonID, contentID),
    FOREIGN KEY (lessonID) REFERENCES Lesson(lessonID) ON DELETE CASCADE,
    FOREIGN KEY (contentID) REFERENCES Content(contentID) ON DELETE CASCADE
);

-- Bảng Exercise (Bài tập)
CREATE TABLE Exercise
(
    exerciseID INT IDENTITY(1,1) PRIMARY KEY,
    -- Mã bài tập
    contentID INT NOT NULL,
    -- Mã nội dung liên kết
    difficultyLevel NVARCHAR(50),
    -- Độ khó (Dễ, Trung bình, Khó)
    type NVARCHAR(50),
    -- Loại bài tập (trắc nghiệm, tự luận)
    questionPath NVARCHAR(255),
    -- Đường dẫn câu hỏi
    exercisePath NVARCHAR(255),
    -- Đường dẫn bài tập
    content NVARCHAR(MAX),
    -- Nội dung bài tập
    createdAt DATETIME DEFAULT GETDATE(),
    -- Ngày tạo bài tập
    FOREIGN KEY (contentID) REFERENCES Content(contentID) ON DELETE CASCADE
);

-- Bảng Test (Bài kiểm tra)
CREATE TABLE Test
(
    testID INT IDENTITY(1,1) PRIMARY KEY,
    -- Mã bài kiểm tra
    lessonID INT NOT NULL,
    -- Mã bài học liên kết
    testName NVARCHAR(255) NOT NULL,
    -- Tên bài kiểm tra
    description NVARCHAR(MAX),
    -- Mô tả bài kiểm tra
    duration INT,
    -- Thời gian làm bài (phút)
    filePath NVARCHAR(255),
    -- Đường dẫn bài kiểm tra
    createdAt DATETIME DEFAULT GETDATE(),
    -- Ngày tạo bài kiểm tra
    FOREIGN KEY (lessonID) REFERENCES Lesson(lessonID) ON DELETE CASCADE
);

-- Bảng Test_Content (Liên kết bài kiểm tra với nội dung)
CREATE TABLE Test_Content
(
    testID INT,
    -- Mã bài kiểm tra
    contentID INT,
    -- Mã nội dung
    PRIMARY KEY (testID, contentID),
    FOREIGN KEY (testID) REFERENCES Test(testID) ON DELETE CASCADE,
    FOREIGN KEY (contentID) REFERENCES Content(contentID) ON DELETE CASCADE
);

-- Bảng TestScore (Điểm kiểm tra của người dùng)
CREATE TABLE TestScore
(
    userID INT,
    -- Mã người dùng
    testID INT,
    -- Mã bài kiểm tra
    score DECIMAL(5,2) NOT NULL,
    -- Điểm bài kiểm tra
    attemptDate DATETIME DEFAULT GETDATE(),
    -- Ngày làm bài
    PRIMARY KEY (userID, testID, attemptDate),
    FOREIGN KEY (userID) REFERENCES Users(userID) ON DELETE CASCADE,
    FOREIGN KEY (testID) REFERENCES Test(testID) ON DELETE CASCADE
);

-- Bảng ExerciseScore (Điểm bài tập của người dùng)
CREATE TABLE ExerciseScore
(
    userID INT,
    -- Mã người dùng
    exerciseID INT,
    -- Mã bài tập
    score DECIMAL(5,2) NOT NULL,
    -- Điểm bài tập
    attemptDate DATETIME DEFAULT GETDATE(),
    -- Ngày nộp bài
    PRIMARY KEY (userID, exerciseID, attemptDate),
    FOREIGN KEY (userID) REFERENCES Users(userID) ON DELETE CASCADE,
    FOREIGN KEY (exerciseID) REFERENCES Exercise(exerciseID) ON DELETE CASCADE
);
