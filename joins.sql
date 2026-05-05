-- =====================================
-- JOINS PRACTICE
--
-- Topics Covered:
-- - Creating related tables
-- - INNER JOIN
-- - LEFT JOIN
-- - RIGHT JOIN
-- - JOIN with GROUP BY
-- =====================================

-- Note: this file is organized for JOIN syntax practice,
-- so queries are not always meant to be run all at once.


-- Select database
USE practice_db;

-- Create courses table
CREATE TABLE IF NOT EXISTS courses (
    id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT,
    course_name VARCHAR(50),
    instructor VARCHAR(50)
);

-- Insert sample data
INSERT INTO courses (student_id, course_name, instructor) VALUES
(1, 'Introduction to Biology', 'Dr. Smith'),
(1, 'Fundamentals of Chemistry', 'Dr. Brown'),
(2, 'Business Management Principles', 'Dr. Lee'),
(3, 'Engineering Fundamentals', 'Dr. Kim');


-- INNER JOIN (JOIN is shorthand for INNER JOIN)
SELECT s.name, c.course_name
FROM students s
JOIN courses c
ON s.id = c.student_id;

SELECT s.major, c.course_name
FROM students s
JOIN courses c
ON s.id = c.student_id;

SELECT c.course_name, COUNT(*) AS total_students
FROM courses c
INNER JOIN students s
ON s.id = c.student_id
GROUP BY c.course_name;

-- LEFT JOIN
SELECT s.name, IFNULL(c.course_name, 'No Course') AS course_name
FROM students s
LEFT JOIN courses c
ON s.id = c.student_id;

SELECT s.name, COUNT(c.course_name) AS total_courses
FROM students s
LEFT JOIN courses c
ON s.id = c.student_id
GROUP BY s.name;

-- RIGHT JOIN (less commonly used, similar to LEFT JOIN with reversed tables)
SELECT s.name, c.course_name, c.instructor
FROM students s
RIGHT JOIN courses c
ON s.id = c.student_id;