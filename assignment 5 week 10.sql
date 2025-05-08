
CREATE TABLE Country (
    Id INT PRIMARY KEY,
    Country_name VARCHAR(100),
    Population INT,
    Area INT
);


CREATE TABLE Persons (
    Id INT PRIMARY KEY,
    Fname VARCHAR(100),
    Lname VARCHAR(100),
    Population INT,
    Rating DECIMAL(3, 1),
    Country_Id INT,
    Country_name VARCHAR(100),
    FOREIGN KEY (Country_Id) REFERENCES Country(Id)
);


INSERT INTO Country (Id, Country_name, Population, Area) VALUES
(1, 'USA', 331000000, 9834000),
(2, 'Canada', 38000000, 9984670),
(3, 'India', 1393409038, 3287263),
(4, 'Australia', 25499884, 7692024),
(5, 'UK', 67886011, 243610),
(6, 'Germany', 83783942, 357022),
(7, 'France', 65273511, 551695),
(8, 'Italy', 60265000, 301340),
(9, 'Japan', 126860000, 377975),
(10, 'South Korea', 51329899, 100032);


INSERT INTO Persons (Id, Fname, Lname, Population, Rating, Country_Id, Country_name) VALUES
(1, 'John', 'Doe', 331000000, 4.2, 1, 'USA'),
(2, 'Jane', 'Smith', 331000000, 4.8, 1, 'USA'),
(3, 'Alice', 'Johnson', 38000000, 4.5, 2, 'Canada'),
(4, 'Bob', 'Williams', 1393409038, 3.9, 3, 'India'),
(5, 'Charlie', 'Brown', 25499884, 4.1, 4, 'Australia'),
(6, 'David', 'Davis', 67886011, 4.9, 5, 'UK'),
(7, 'Eva', 'Miller', 83783942, 5.0, 6, 'Germany'),
(8, 'Frank', 'Taylor', 65273511, 3.8, 7, 'France'),
(9, 'Grace', 'Anderson', 60265000, 4.6, 8, 'Italy'),
(10, 'Helen', 'Thomas', 126860000, 4.3, 9, 'Japan');


SELECT LEFT(Country_name, 3) AS Country_Prefix FROM Country;


SELECT CONCAT(Fname, ' ', Lname) AS Full_Name FROM Persons;


SELECT COUNT(DISTINCT Country_name) AS Unique_Countries FROM Persons;


SELECT MAX(Population) AS Max_Population FROM Country;


SELECT MIN(Population) AS Min_Population FROM Persons;


INSERT INTO Persons (Id, Fname, Lname, Population, Rating, Country_Id, Country_name) VALUES
(11, 'Michael', NULL, 70000000, 4.4, 2, 'Canada'),
(12, 'Olivia', NULL, 80000000, 4.7, 5, 'UK');


SELECT COUNT(Lname) AS Lname_Count FROM Persons;


SELECT COUNT(*) AS Total_Rows FROM Persons;


SELECT Population FROM Country LIMIT 3;

-
SELECT * FROM Country ORDER BY RAND() LIMIT 3;


SELECT * FROM Persons ORDER BY Rating DESC;


SELECT Country_name, SUM(Population) AS Total_Population
FROM Persons
GROUP BY Country_name;

-
SELECT Country_name, SUM(Population) AS Total_Population
FROM Persons
GROUP BY Country_name
HAVING SUM(Population) > 50000;

SELECT Country_name, COUNT(*) AS Total_Persons, AVG(Rating) AS Avg_Rating
FROM Persons
GROUP BY Country_name
HAVING COUNT(*) > 2
ORDER BY Avg_Rating ASC;
