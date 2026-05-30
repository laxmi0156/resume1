-- CREATE DATABASE Student_Result_Management_System;
-- USE Student_Result_Management_System;

/*CREATE TABLE Students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    student_name VARCHAR(50),
    gender VARCHAR(10),
    class VARCHAR(20),
    city VARCHAR(50),
    phone VARCHAR(15)
); */

/*CREATE TABLE Subjects (
    subject_id INT PRIMARY KEY AUTO_INCREMENT,
    subject_name VARCHAR(50),
    max_marks INT
); */

/* CREATE TABLE Marks (
    mark_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    subject_id INT,
    marks_obtained INT,

    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (subject_id) REFERENCES Subjects(subject_id)
); */

/*INSERT INTO Students
(student_name, gender, class, city, phone)

VALUES
('Rahul Sharma', 'Male', '10th', 'Ahmedabad', '9876543210'),
('Priya Patel', 'Female', '10th', 'Surat', '9876501234'),
('Amit Kumar', 'Male', '10th', 'Vadodara', '9876511111'),
('Sneha Verma', 'Female', '10th', 'Rajkot', '9876522222'); */

/* INSERT INTO Subjects(subject_name, max_marks)VALUES
('Mathematics', 100),
('Science', 100),
('English', 100),
('Computer', 100),
('Social Science', 100); */

/*INSERT INTO Marks(student_id, subject_id, marks_obtained)VALUES
-- Rahul
(1,1,85),
(1,2,78),
(1,3,90),
(1,4,88),
(1,5,80),

-- Priya
(2,1,92),
(2,2,89),
(2,3,95),
(2,4,91),
(2,5,87),

-- Amit
(3,1,45),
(3,2,50),
(3,3,40),
(3,4,55),
(3,5,48),

-- Sneha
(4,1,30),
(4,2,35),
(4,3,28),
(4,4,40),
(4,5,32); */

SELECT 
    s.student_id,
    s.student_name,

    SUM(m.marks_obtained) AS Total_Marks,

    ROUND(AVG(m.marks_obtained),2) AS Percentage,

    CASE
        WHEN AVG(m.marks_obtained) >= 80 THEN 'A'
        WHEN AVG(m.marks_obtained) >= 60 THEN 'B'
        WHEN AVG(m.marks_obtained) >= 40 THEN 'C'
        ELSE 'Fail'
    END AS Grade,

    CASE
        WHEN AVG(m.marks_obtained) >= 40 THEN 'Pass'
        ELSE 'Fail'
    END AS Result_Status

FROM Students s
JOIN Marks m
ON s.student_id = m.student_id

GROUP BY s.student_id, s.student_name;