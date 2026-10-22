SHOW DATABASES;
CREATE DATABASE basicjoin;
USE basicjoin;

CREATE TABLE employee(
		emp_id INT PRIMARY KEY,
        ename VARCHAR(50)
);
DESC employee;

INSERT INTO employee(emp_id, ename) VALUES
(1,'Mohit'),
(2,"Prasad"),
(3,"Nikhil"),
(4,"Deo"),
(5,"Yash");

SELECT * FROM employee;

CREATE TABLE projects(
		project_id INT PRIMARY KEY,
        pname VARCHAR(50),
        emp_id INT, FOREIGN KEY (emp_id) REFERENCES employee(emp_id)
);

INSERT INTO projects (project_id,pname,emp_id) VALUES
(1,);

