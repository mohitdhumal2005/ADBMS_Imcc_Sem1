/* Filtering data from tables These are the FILTERING OPERATIONS IN SQL */
/* Where
Select
Distinct
And
Or
Not
In
Not In
Between
Like
Limit
Is Null */

CREATE DATABASE organization;

USE organization;

CREATE TABLE employee(
		empid INT NOT NULL PRIMARY KEY,
		firstname VARCHAR(20),
        lastname VARCHAR(20),
        gender CHAR,
        role VARCHAR(20),
        dept VARCHAR(20),
        manager_id VARCHAR(20));
DESC employee;


INSERT INTO employee (empid, firstname, lastname, gender, role, dept, manager_id) VALUES
    (101, 'Amit',  'Sharma',   'M', 'Manager',         'IT',    'M11'),
    (102, 'Neha',  'Patil',    'F', 'Developer',       'IT',    'M12'),
    (103, 'Rahul', 'Deshmukh', 'M', 'Tester',          'IT',    'M13'),
    (104, 'Priya', 'Joshi',    'F', 'HR Officer',      'HR',    'M14'),
    (105, 'Karan', 'More',     'M', 'Sales Executive', 'Sales', 'M15');
    
SELECT * FROM employee;

/* SELECT DISTINCT KEYWORD*/
/* THE DISTINCT clause in the SELECT statement is used to eliminate 
duplicate rows from the result set that may be produced while querying data from a table.
When using the DISTINCT clause to provide a column with NULL values,
the DISTINCT clause will only preserve one null value since it considers all NULL values to the same*/

SELECT DISTINCT dept
FROM employee
ORDER BY dept;

-- DISTINCT clause to get all unique values of the ROLE Column
SELECT DISTINCT role
FROM employee
ORDER BY role;

/* AND Operator: The And Operator is a logical operator that combines two or more Boolean expressions and 
returns 1,0, or NULL. The AND Operator is used for filtering data with the WHERE Clause */
SELECT * FROM employee;

SELECT *
FROM employee
WHERE role = 'Developer' AND dept = 'IT';

SELECT *
FROM employee
WHERE role = 'Developer' AND dept = 'HR'; -- RETURNS NULL cause there is no such data.

/* OR Operator: The OR Operator is a logical operator thata combines two Boolean expressions and return 1
(true) if either of the expression is true.
The OR Operator is used for filtering data with the WHERE Clause. */

	SELECT * 
    FROM employee
    WHERE role = 'Manager' OR dept = 'IT';
    
/* IN Operator: The IN Operator is used to determine if a value matches any other value in a list.
If the value equals any values 
*/

SELECT *
FROM employee WHERE role IN ('Manager', 'Developer');

SELECT *
FROM employee WHERE role IN ('TM', 'CEO'); -- RETURN NULL cause i dont have the data.

/* NOT IN Operator: the not in oeperator is formed by combining the not  and in oepartors.
THE NOT IN operator, in contrast to the IN operator,
is used to determune idf a value does not match any of the values in a list.
*/
SELECT * FROM employee
WHERE role NOT IN ('Manager', 'Developer'); -- RETURN all role where there is no MANAGER AND DEVELOPER

/* BETWEEN OPERATOR - IS A LOGICAL OPERATOR THAT DETERMINES WHETHER A VALUE BELONGS IN A RANGE.
THE BETWEEEN OPERATOR RETURNS NULL IS THE VALUE, LOW OR HIGH IS NULL*/
ALTER TABLE employee ADD COLUMN experience INT;

SELECT * FROM employee;
UPDATE employee SET experience = 10 WHERE empid = 101;
UPDATE employee SET experience = 8 WHERE empid = 102;
UPDATE employee SET experience = 5 WHERE empid = 103;
UPDATE employee SET experience = 8 WHERE empid = 104;
UPDATE employee SET experience = 15 WHERE empid = 105;

--  USE of BETWEEN Operator:
SELECT * 
FROM employee
WHERE experience BETWEEN 6 AND 10;

SELECT * 
FROM employee
WHERE experience = 6 OR experience = 10;

/* LIKE Operator - is logical operator  that determines whether or not a string contains a specified patter.*/
SELECT * FROM employee
WHERE lastname LIKE 'D%';  -- RETURNS RECORDS whose lastname is starting with D

/* LIMIT OPERATOR: THE LIMIT clause in the SELECT
STATEMENT IS USED TO LIMIT THE NUMBER OF ROWS RETURNED*/
SELECT * FROM employee; 
SELECT * FROM employee
ORDER BY experience
LIMIT 4;           --  LIMITING THE NUMBER OF RECORDS!!

/* IS NULL: DTERMINES WHETHER OR NOT A VALUE IS NULL
THE EXPRESSION */

INSERT INTO employee (empid, firstname, lastname, gender, role, dept, manager_id) VALUES 
(106, 'Mohit', 'Dhumal', 'M', 'Tester', 'IT', NULL);

SELECT * FROM employee;

SELECT * FROM employee
WHERE manager_id IS NULL;

SELECT * FROM employee
WHERE EXPERIENCE IS NULL;

SELECT * FROM employee
WHERE manager_id IS NOT NULL;








