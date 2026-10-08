CREATE DATABASE college;
SHOW DATABASES;
USE college;

CREATE TABLE employee(
	empid INT,
    f_name VARCHAR(50),
    l_name VARCHAR(50),
    emp_age	INT,
    emp_zone VARCHAR(50)
);
DESC employee;

INSERT INTO employee VALUES (102,'Rhiya','Gandhi',40,'west');
SELECT * FROM employee;
INSERT INTO employee VALUES (103,'Nikhil','Deo',55,'south');
INSERT INTO employee VALUES (104,'Mohit','Dhumal',20,'north');

INSERT INTO employee (empid, f_name, l_name, emp_age, emp_zone) VALUES
(105,'Parnika','Bhagwat',25,'east'),
(106,'Ram','Shinde',34,'west');

UPDATE employee
SET emp_zone = 'none'
WHERE empid = 106;
SET SQL_SAFE_UPDATES = 0;

UPDATE employee
SET emp_age = 29,
	emp_zone = 'north'
WHERE empid = 101;

DELETE FROM employee
WHERE empid = 106;
SELECT * FROM employee;
SELECT empid, f_name FROM employee;

TRUNCATE employee;
