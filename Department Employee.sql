CREATE DATABASE CompanyDB;
USE CompanyDB;

CREATE TABLE Department (
    DeptID INTEGER PRIMARY KEY,
    DeptName VARCHAR(50)
);

CREATE TABLE Employee (
    EmpID INTEGER PRIMARY KEY,
    EmpName VARCHAR(100),
    Age INTEGER,
    Salary DECIMAL(10, 2),
    DeptID INTEGER,
    JoinDate DATE,
    FOREIGN KEY (DeptID) REFERENCES Department(DeptID)
);

INSERT INTO Department (DeptID, DeptName) VALUES
(1, 'HR'),
(2, 'Finance'),
(3, 'IT'),
(4, 'Marketing');

INSERT INTO Employee (EmpID, EmpName, Age, Salary, DeptID, JoinDate) VALUES
(101, 'Mahi', 30, 50000, 3, '2021-06-01'),
(102, 'Saru', 25, 45000, 2, '2022-01-15'),
(103, 'Sandeep', 35, 70000, 3, '2019-03-12'),
(104, 'Manoj', 28, 40000, 4, '2023-07-10'),
(105, 'Swetha', 32, 55000, 1, '2020-08-20');

SELECT * FROM Employee;

SELECT EmpName, Salary FROM Employee;

SELECT * FROM Employee
WHERE Salary > 45000;

SELECT * FROM Employee
WHERE Age > 30 AND Salary < 60000;
SELECT * FROM Employee
WHERE EmpName LIKE 'S%';

SELECT * FROM Employee
WHERE Age BETWEEN 25 AND 32;

SELECT * FROM Employee
ORDER BY Salary DESC;

SELECT * FROM Employee
ORDER BY Salary DESC
LIMIT 3;

SELECT EmpName, DeptName, Salary
FROM Employee
JOIN Department ON Employee.DeptID = Department.DeptID;

SELECT * FROM Employee
WHERE Age < 26 OR Salary > 60000;
