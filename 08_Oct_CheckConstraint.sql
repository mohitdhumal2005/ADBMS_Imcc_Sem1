CREATE DATABASE company_db;
USE company_db;
SHOW DATABASES;

CREATE TABLE employee(
	empid INT NOT NULL,
    f_name VARCHAR(50),
    l_name VARCHAR(33),
    emp_age INT,
    emp_zone VARCHAR(30)
);
DESC employee;

INSERT INTO employee VALUES(NULL,"Rhiya","Gandhi",40,"West"); -- Emp Id Should not be Null
INSERT INTO employee VALUES(101, "Rhiya","Gandhi",40,"West");

-- NEW TABLE
CREATE TABLE employee1(
	empid INT NOT NULL,
    f_name VARCHAR(30),
    l_name VARCHAR(30),
    UNIQUE(empid)
);  
INSERT INTO employee1 VALUES (101,'Yash',"Deokate");
INSERT INTO employee1 VALUES (101,"Mohit","Dhumal"); -- Won't Execute Because of Duplicate Empid
SELECT * FROM employee1;

-- NEW TABLE
CREATE TABLE employee2(
	empid INT NOT NULL,
    f_name VARCHAR(30),
    l_name VARCHAR(30),
    emp_Age INT, CHECK (emp_Age>20)
);
DESC employee2;

INSERT INTO employee2 VALUES(101,"Mohit","Dhumal",19); -- Won't Execute Because of Check Constraint!
INSERT INTO employee2 VALUES(101,"Mohit","Dhumal",29); -- Executed
INSERT INTO employee2 VALUES(102,"Ruturaj","Paygude",18); -- Won't Execute Because of Check Constraint!
SELECT * FROM employee2;
