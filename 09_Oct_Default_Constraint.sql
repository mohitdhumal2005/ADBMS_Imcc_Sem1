-- Default Constraint: Set a default value fro a column:
--  if no other
-- Value specified
USE company_db;

CREATE TABLE Employee4(
	empid INT NOT NULL,
    firstName VARCHAR(10),
    lastName VARCHAR(20),
    dept VARCHAR(20) DEFAULT("Operations")
    
);
DESC Employee4;

INSERT INTO Employee4 VALUES(1,"Mohit","Dhumal"); -- Won't Execute beacuse there are total 4 Columns

INSERT INTO Employee4(empid, firstName, lastName) 
VALUES(1,"Mohit","Dhumal");
SELECT * FROM Employee4;

INSERT INTO Employee4(empid,firstName, lastName)
VALUES(2,"Rhiya","Gandhi"),
	(3,"Yash","Deokate");