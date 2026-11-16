-- 1. Create Database
CREATE DATABASE student_records;
USE student_records;

-- 2. Create Student Table
CREATE TABLE students (
    id INT PRIMARY KEY,
    student_name VARCHAR(50),
    attendance INT,
    department VARCHAR(50)
);

-- 3. Add Student Records
INSERT INTO students VALUES
(1, 'John Smith', 85, 'CSE'),
(2, 'Emma Wilson', 90, 'EEE'),
(3, 'Oliver Brown', 78, 'BBA'),
(4, 'Sophia Taylor', 95, 'CSE'),
(5, 'William Johnson', 70, 'EEE'),
(6, 'Isabella Martin', 88, 'CSE'),
(7, 'James Anderson', 82, 'BBA'),
(8, 'Charlotte Thomas', 75, 'EEE'),
(9, 'Benjamin White', 92, 'CSE'),
(10, 'Amelia Harris', 80, 'BBA');

-- 4. View All Students
SELECT * FROM students;

-- 5. Search Student
SELECT * FROM students WHERE id = 3;

-- 6. Update Student Attendance
UPDATE students
SET attendance = 95
WHERE id = 1;

-- 7. Delete Student
DELETE FROM students WHERE id = 10;

-- 8. Aggregate Functions
SELECT COUNT(*) AS total_students FROM students;

SELECT AVG(attendance) AS average_attendance
FROM students;

SELECT MAX(attendance) AS highest_attendance
FROM students;

SELECT MIN(attendance) AS lowest_attendance
FROM students;

SELECT SUM(attendance) AS total_attendance
FROM students;

-- 9. Department-wise Average Attendance
SELECT department, AVG(attendance) AS average_attendance
FROM students
GROUP BY department;

-- 10. Display Final Student Records
SELECT * FROM students;
