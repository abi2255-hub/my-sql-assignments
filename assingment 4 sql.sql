-- Create a new database
CREATE DATABASE WorldDB;


-- Use the created database
USE WorldDB;




CREATE TABLE Country (
    Id INT PRIMARY KEY,
    Country_name VARCHAR(50),
    Population INT,
    Area INT
    
);


CREATE TABLE Persons (
    Id INT PRIMARY KEY,
    Fname VARCHAR(50),
    Lname VARCHAR(50),
    Population INT,
    Rating FLOAT,
    Country_Id INT,
    Country_name VARCHAR(50)
);



INSERT INTO Country VALUES
(1, 'USA', 33100000, 9834000),
(2, 'India', 13930000, 3287000),
(3, 'Canada', 3800000, 9985000),
(4, 'UK', 6700000, 243000),
(5, 'Australia', 2560000, 7692000),
(6, 'Germany', 8300000, 357000),
(7, 'France', 6700000, 551000),
(8, 'China', 14400000, 9597000),
(9, 'Brazil', 2130000, 8516000),
(10, 'Japan', 1260000, 377000);


INSERT INTO Persons VALUES
(1, 'John', 'Doe', 33100000, 4.2, 1, 'USA'),
(2, 'Jane', 'Smith', 13930000, 4.7, 2, 'India'),
(3, 'Ali', 'Khan', 3800000, 3.9, 3, 'Canada'),
(4, 'Emily', 'Davis', 6700000, 4.6, 4, 'UK'),
(5, 'Bruce', 'Wayne', 2560000, 4.8, 5, 'Australia'),
(6, 'Clark', 'Kent', 8300000, 4.3, 6, 'Germany'),
(7, 'Peter', 'Parker', 6700000, 3.8, 7, 'France'),
(8, 'Steve', 'Rogers', 14400000, 4.9, 8, 'China'),
(9, 'Natasha', 'Romanoff', 2130000, 4.1, 9, 'Brazil'),
(10, 'Tony', 'Stark', 1260000, 4.5, 10, 'Japan');


SELECT DISTINCT Country_name FROM Persons;

SELECT Fname AS First_Name, Lname AS Last_Name FROM Persons;

SELECT * FROM Persons WHERE Rating > 4.0;

SELECT * FROM Country WHERE Population > 1000000;

SELECT * FROM Persons WHERE Country_name = 'USA' OR Rating > 4.5;

SELECT * FROM Persons WHERE Country_name IS NULL;

SELECT * FROM Persons 
WHERE Country_name IN ('USA', 'Canada', 'UK');

SELECT * FROM Persons 
WHERE Country_name NOT IN ('India', 'Australia');

SELECT * FROM Country 
WHERE Population BETWEEN 500000 AND 2000000;

SELECT * FROM Country 
WHERE Country_name NOT LIKE 'C%';


