CREATE database institute;
USE institute;

CREATE TABLE staff(
	staff_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    DOB DATE,
    dept_id int
);
desc staff;
select * FROM staff;

CREATE TABLE department(
	dept_id INT,
    dept_name VARCHAR(50),
    dept_location VARCHAR(50)
);
SELECT * FROM department;
DESC department;

ALTER TABLE staff ADD location VARCHAR(40), ADD joining_date DATE;
ALTER TABLE staff RENAME COLUMN joining_date TO joining_year;
ALTER TABLE staff ADD age INT, ADD contact_no INT;
ALTER TABLE staff MODIFY joining_year INT;

ALTER TABLE staff DROP COLUMN contact_no;
ALTER TABLE staff MODIFY first_name VARCHAR(20);

ALTER TABLE department ADD PRIMARY KEY (dept_id);
ALTER TABLE department DROP PRIMARY KEY;

ALTER TABLE department ADD PRIMARY KEY(dept_id);
ALTER TABLE staff ADD FOREIGN KEY (dept_id) REFERENCES department(dept_id);
SELECT * FROM staff;
SELECT * FROM department;
ALTER TABLE staff ADD CONSTRAINT fk_staff FOREIGN KEY(dept_id) REFERENCES department(dept_id);

