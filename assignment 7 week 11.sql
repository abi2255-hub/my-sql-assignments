ALTER TABLE Persons
ADD COLUMN DOB DATE;

CREATE FUNCTION CalculateAge(DOB DATE) 
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE age INT;
    SET age = TIMESTAMPDIFF(YEAR, DOB, CURDATE());
    RETURN age;
END;

SELECT Fname, Lname, DOB, CalculateAge(DOB) AS Age
FROM Persons;

SELECT Country_name, LENGTH(Country_name) AS Name_Length
FROM Country;

SELECT Country_name, LEFT(Country_name, 3) AS Country_Prefix
FROM Country;

SELECT Country_name, UPPER(Country_name) AS Upper_Country_name
FROM Country;

SELECT Country_name, LOWER(Country_name) AS Lower_Country_name
FROM Country;
