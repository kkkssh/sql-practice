-- =====================================
-- BASIC SQL QUERIES PRACTICE
-- Covers: CREATE, INSERT, UPDATE, DELETE,
-- SELECT, ORDER BY, DISTINCT, WHERE, ALTER
-- =====================================

-- =========================
-- CREATE DATABASE & USE
-- =========================

-- Create database (run once)
CREATE DATABASE IF NOT EXISTS practice_db;

-- Select database
USE practice_db;


-- =========================
-- CREATE TABLE
-- =========================

-- Create students table
CREATE TABLE IF NOT EXISTS students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    student_year INT,
    gender VARCHAR(20),
    major VARCHAR(50),
    country VARCHAR(50)
);
-- PRIMARY KEY: unique identifier
-- AUTO_INCREMENT: auto increasing id


-- =========================
-- INSERT DATA
-- =========================

-- Insert sample data
INSERT INTO students (name, student_year, gender, major, country) VALUES
('Luis', 2, 'man', 'Biology', 'Spain'),
('Emma', 1, 'woman', 'Business', 'UK'),
('Alex', 3, 'man', 'Engineering', 'USA'),
('Sophia', 2, 'woman', 'Biology', 'Canada');


-- =========================
-- UPDATE
-- =========================

-- Update student year
UPDATE students
SET student_year = 3
WHERE name = 'Luis' OR name = 'Sophia';


-- =========================
-- DELETE
-- =========================

-- Delete students with year less than 2
DELETE FROM students
WHERE student_year < 2;

-- Delete all rows (use carefully)
-- DELETE FROM students;


-- =========================
-- SELECT BASIC
-- =========================

-- Select specific column
SELECT name FROM students;

-- Select multiple columns
SELECT name, gender FROM students;

-- Select all columns
SELECT * FROM students;


-- =========================
-- ORDER BY
-- =========================

-- Order by name (default: ASC)
SELECT * FROM students
ORDER BY name;

-- Order by name ascending
SELECT * FROM students
ORDER BY name ASC;

-- Order by name descending
SELECT * FROM students
ORDER BY name DESC;


-- =========================
-- DISTINCT
-- =========================

-- Get unique countries
SELECT DISTINCT country FROM students;


-- =========================
-- WHERE FILTERING
-- =========================

-- Filter by major
SELECT * FROM students
WHERE major = 'Biology';

-- Filter by student year
SELECT * FROM students
WHERE student_year = 1;

-- Select specific columns with condition
SELECT name, major FROM students
WHERE major = 'Biology';

-- Not equal
SELECT * FROM students
WHERE student_year <> 1;

-- Less than
SELECT * FROM students
WHERE student_year < 3;

-- Less than or equal
SELECT * FROM students
WHERE student_year <= 3;

-- Greater than
SELECT * FROM students
WHERE student_year > 2;

-- Greater than or equal
SELECT * FROM students
WHERE student_year >= 2;


-- =========================
-- ALIAS
-- =========================

-- Rename column using alias
SELECT name AS women, student_year
FROM students
WHERE gender = 'woman';


-- =========================
-- ALTER TABLE
-- =========================

-- Add new column
ALTER TABLE students
ADD email VARCHAR(100);

-- Rename column
ALTER TABLE students
RENAME COLUMN email TO student_email;

-- Modify column type
ALTER TABLE students
MODIFY student_email VARCHAR(150);

-- Drop column (use carefully)
ALTER TABLE students
DROP COLUMN student_email;

