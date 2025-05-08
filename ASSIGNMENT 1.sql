CREATE DATABASE SCHOOL;
USE SCHOOL;

CREATE TABLE Students (
    Roll_number INT AUTO_INCREMENT PRIMARY KEY,
    First_name VARCHAR(50) NOT NULL,
    Last_name VARCHAR(50) NOT NULL,
    Marks INT, -- Use INT or DECIMAL instead of VARCHAR if marks are numeric
    Grade CHAR(4) CHECK (Grade IN ('A', 'B', 'C', 'D'))
);

-- Describe the structure of the table
DESC Students;
alter table Students add Contact varchar(15);
ALTER TABLE Students
DROP COLUMN Grade;
RENAME TABLE Students TO CLASSTEN;
TRUNCATE TABLE CLASSTEN;
DROP TABLE CLASSTEN;