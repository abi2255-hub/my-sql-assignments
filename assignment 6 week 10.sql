SELECT p.Fname, p.Lname, p.Country_name, c.Country_name, p.Rating
FROM Persons p
INNER JOIN Country c ON p.Country_name = c.Country_name;

SELECT p.Fname, p.Lname, p.Country_name, c.Country_name, p.Rating
FROM Persons p
LEFT JOIN Country c ON p.Country_name = c.Country_name;

SELECT p.Fname, p.Lname, p.Country_name, c.Country_name, p.Rating
FROM Persons p
RIGHT JOIN Country c ON p.Country_name = c.Country_name;

SELECT DISTINCT Country_name
FROM Country
UNION
SELECT DISTINCT Country_name
FROM Persons;

SELECT Country_name
FROM Country
UNION ALL
SELECT Country_name
FROM Persons;

SELECT Fname, Lname, Country_name, ROUND(Rating) AS Rounded_Rating
FROM Persons;
