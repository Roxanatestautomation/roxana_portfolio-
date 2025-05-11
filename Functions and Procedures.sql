CREATE DATABASE EmployeeDB;
USE EmployeeDB;

CREATE TABLE Employees (
employee_id INT AUTO_INCREMENT,
employee_name VARCHAR(100),
salary DECIMAL(10,2),
PRIMARY KEY (employee_id)
);

INSERT INTO Employees (employee_name, salary) VALUES 
('Alice', 50000.00),
('Bob', 600.00),
('Charlie', 75000.00),
('David', 90000.00);
-- create a function that will calculate the bonus that an employee will receive, 
-- based on 10% of their salary

select * from Employees;

-- CREATE FUNCTION 
DELIMITER $$
CREATE FUNCTION CalculateBonus (salary DECIMAL(10,2))
RETURNS DECIMAL(10,0)
DETERMINISTIC
BEGIN
    DECLARE bonus DECIMAL(10,2);
    SET bonus = salary * 0.1;
    RETURN bonus;
END $$
DELIMITER ;

SELECT CalculateBonus(60000.00);

-- CREATE PROCEDURES
DELIMITER $$
CREATE PROCEDURE GetAllEmployees()
BEGIN
	SELECT * FROM Employees;
END $$
DELIMITER ;

CALL GetAllEmployees();