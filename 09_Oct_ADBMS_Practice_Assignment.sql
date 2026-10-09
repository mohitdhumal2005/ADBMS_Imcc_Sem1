/* ADBMS Practice Assignment: 09-10-2026 */

CREATE DATABASE CompanyDB;
SHOW DATABASES;
USE CompanyDB;

CREATE TABLE Employees(
	EmpID INT PRIMARY KEY,
    EmpName VARCHAR(20),
    Salary INT,
    JoinDate DATE
);
DESC Employees;

CREATE TABLE Departments(
	DeptID INT PRIMARY KEY,
    DeptName VARCHAR(20)
);
DESC Departments;

ALTER TABLE Employees ADD COLUMN Email VARCHAR(100);
DESC Employees;

ALTER TABLE Departments ADD COLUMN dept_location VARCHAR(30);
DESC Departments;

ALTER TABLE Employees ADD COLUMN Phone INT NOT NULL;
DESC Employees;

ALTER TABLE Employees MODIFY EmpName VARCHAR(100);
DESC Employees;

ALTER TABLE Departments DROP PRIMARY KEY;
DESC Departments;

ALTER TABLE Departments ADD constraint PRIMARY KEY(DeptID);

ALTER TABLE Employees ADD COLUMN DeptID INT;
ALTER TABLE Employees ADD constraint fk_dept FOREIGN KEY(DeptID) REFERENCES Departments(DeptID);
Desc Employees;
SHOW CREATE TABLE Employees;

ALTER TABLE Employees RENAME COLUMN EmpName to EmployeeName;
DESC Employees;

ALTER TABLE Employees ADD COLUMN Age INT;
ALTER TABLE Employees ADD constraint chk_age CHECK(Age>=18);
ALTER TABLE Employees ADD constraint chk_salary CHECK(Salary>0);
SHOW CREATE TABLE Employees;

ALTER TABLE Employees DROP COLUMN Phone;
DESC Employees;

RENAME TABLE Employees To EmployeeDetails;
DESC EmployeeDetails;
SHOW CREATE TABLE EmployeeDetails;

ALTER TABLE EmployeeDetails DROP constraint chk_age;
ALTER TABLE EmployeeDetails DROP constraint chk_salary;

ALTER TABLE EmployeeDetails DROP constraint fk_dept;
DROP TABLE Departments;
SHOW TABLES;

DROP DATABASE CompanyDB;
Show DATABASES;