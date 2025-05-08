
SELECT Country_name, COUNT(*) AS Number_of_Persons
FROM Persons
GROUP BY Country_name;

SELECT Country_name, COUNT(*) AS Number_of_Persons
FROM Persons
GROUP BY Country_name
ORDER BY Number_of_Persons DESC;

SELECT Country_name, AVG(Rating) AS Average_Rating
FROM Persons
GROUP BY Country_name
HAVING AVG(Rating) > 3.0;

SELECT Country_name
FROM Persons
WHERE Rating = (SELECT Rating FROM Persons WHERE Country_name = 'USA');

SELECT Country_name
FROM Country
WHERE Population > (SELECT AVG(Population) FROM Country);


CREATE DATABASE Product;
USE Product;

CREATE TABLE Customer (
    Customer_Id INT PRIMARY KEY,
    First_name VARCHAR(100),
    Last_name VARCHAR(100),
    Email VARCHAR(100),
    Phone_no VARCHAR(15),
    Address VARCHAR(255),
    City VARCHAR(100),
    State VARCHAR(50),
    Zip_code VARCHAR(10),
    Country VARCHAR(50)
);

CREATE VIEW customer_info AS
SELECT CONCAT(First_name, ' ', Last_name) AS Full_Name, Email
FROM Customer;

SELECT * FROM customer_info;

CREATE VIEW US_Customers AS
SELECT * FROM Customer
WHERE Country = 'USA';

CREATE VIEW Customer_details AS
SELECT CONCAT(First_name, ' ', Last_name) AS Full_Name, Email, Phone_no, State
FROM Customer;

UPDATE Customer
SET Phone_no = 'NewPhoneNumber'
WHERE State = 'California';

SELECT State, COUNT(*) AS Number_of_Customers
FROM Customer
GROUP BY State
HAVING COUNT(*) > 5;

SELECT State, COUNT(*) AS Number_of_Customers
FROM Customer_details
GROUP BY State;

SELECT * FROM Customer_details
ORDER BY State ASC;
