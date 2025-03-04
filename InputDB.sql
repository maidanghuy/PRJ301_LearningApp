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

