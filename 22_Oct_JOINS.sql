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
(101,"Project A",1),
(102,"Project B",2),
(103,"Project C",3),
(104,"Project D",4),
(105,"Project E",4);
SELECT * FROM projects;

INSERT INTO employee VALUES (7,"Amit");
INSERT INTO employee VALUES (8,"Vikas");
INSERT INTO projects VALUES(106,"Project ABCD",3),(107,"Project xyz",7);


/* INNER JOIN - Only take the common from both columns.*/
SELECT e.emp_id,p.pname
FROM employee e INNER JOIN projects p ON e.emp_id = p.emp_id;

