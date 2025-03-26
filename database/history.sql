CREATE TABLE History (
    id INT PRIMARY KEY IDENTITY(1,1),
    account_id INT NOT NULL,
    score INT NOT NULL,
    correct_answer INT NOT NULL,
    total_question INT NOT NULL,
    time_taken NVARCHAR(50) NOT NULL,
    date_taken DATETIME NOT NULL,
    FOREIGN KEY (account_id) REFERENCES Account(id)
); 