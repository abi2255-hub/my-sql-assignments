DELIMITER //

CREATE PROCEDURE AddWorker(
    IN p_WorkerId INT,
    IN p_FirstName CHAR(25),
    IN p_LastName CHAR(25),
    IN p_Salary INT,
    IN p_JoiningDate DATETIME,
    IN p_Department CHAR(25)
)
BEGIN
    INSERT INTO Worker (Worker_Id, FirstName, LastName, Salary, JoiningDate, Department)
    VALUES (p_WorkerId, p_FirstName, p_LastName, p_Salary, p_JoiningDate, p_Department);
END //

CREATE PROCEDURE GetSalaryById(
    IN p_WorkerId INT,
    OUT p_Salary INT
)
BEGIN
    SELECT Salary INTO p_Salary
    FROM Worker
    WHERE Worker_Id = p_WorkerId;
END //

CREATE PROCEDURE UpdateDepartment(
    IN p_WorkerId INT,
    IN p_Department CHAR(25)
)
BEGIN
    UPDATE Worker
    SET Department = p_Department
    WHERE Worker_Id = p_WorkerId;
END //

CREATE PROCEDURE GetWorkerCountByDepartment(
    IN p_Department CHAR(25),
    OUT p_WorkerCount INT
)
BEGIN
    SELECT COUNT(*) INTO p_WorkerCount
    FROM Worker
    WHERE Department = p_Department;
END //

CREATE PROCEDURE GetAvgSalaryByDepartment(
    IN p_Department CHAR(25),
    OUT p_AvgSalary DECIMAL(15,2)
)
BEGIN
    SELECT AVG(Salary) INTO p_AvgSalary
    FROM Worker
    WHERE Department = p_Department;
END //

DELIMITER ;

CALL AddWorker(1, 'John', 'Doe', 50000, '2025-01-01 09:00:00', 'HR');
CALL GetSalaryById(1, @Salary);
SELECT @Salary AS Salary;
CALL UpdateDepartment(1, 'Finance');
CALL GetWorkerCountByDepartment('HR', @WorkerCount);
SELECT @WorkerCount AS WorkerCount;
CALL GetAvgSalaryByDepartment('HR', @AvgSalary);
SELECT @AvgSalary AS AvgSalary;
