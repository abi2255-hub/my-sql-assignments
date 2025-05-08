CREATE DATABASE UNIVERSITY;
USE UNIVERSITY;
 CREATE TABLE MANAGERS (
MANAGER_ID INT AUTO_INCREMENT PRIMARY KEY,
 FIRST_NAME VARCHAR(50) NOT NULL,
 LAST_NAME VARCHAR(50) NOT NULL,
 DOB date NOT NULL,
 AGE VARCHAR(10) NOT NULL,
 GENDER CHAR(1) CHECK(GENDER IN ('M','F','O')),
 DEPARTMENT_SALARY INT NOT NULL
 );
 
 DESC MANAGERS;
 
 INSERT INTO MANAGERS('FIRST_NAME','LAST_NAME','DOB','AGE','GENDER','DEPARTMENT_SALARY')
 VALUES
 ('John', 'Doe', '1980-05-15', 43, 'Male', 'IT', 30000),
    ('Aaliya', 'Khan', '1990-07-25', 33, 'Female', 'HR', 25000),
    ('Robert', 'Smith', '1985-03-10', 38, 'Male', 'Finance', 40000),
    ('Emma', 'Johnson', '1992-11-05', 31, 'Female', 'IT', 27000),
    ('William', 'Brown', '1978-01-18', 46, 'Male', 'Operations', 35000),
    ('Sophia', 'Davis', '1988-12-22', 35, 'Female', 'IT', 32000),
    ('Liam', 'Wilson', '1981-09-15', 42, 'Male', 'Marketing', 22000),
    ('Olivia', 'Taylor', '1995-06-09', 28, 'Female', 'Finance', 28000),
    ('James', 'Miller', '1975-02-17', 49, 'Male', 'IT', 29000),
    ('Isabella', 'Moore', '1989-08-30', 34, 'Female', 'HR', 26000);
    
    SELECT FIRST_NAME,LAST_NAME,DOB
    FROM MANAGERS
    WHERE MANAGER_ID=1;
    
    SELECT FIRST_NAME,LAST_NAME,(DEPARTMENT_SALARY*12) AS ANNUAL_SALARY
    FROM MANAGERS;
    
    SELECT *
FROM Managers
WHERE First_name != 'Aaliya';

    SELECT *
FROM Managers
WHERE Department = 'IT' AND Salary > 25000;

SELECT *
FROM Managers
WHERE Salary BETWEEN 10000 AND 35000;
