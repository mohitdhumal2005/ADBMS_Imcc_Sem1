/* Aggregate Functions */
--  Count, Sum, Min, Max, Avg
--  Only for integer and numbered data

--  Group By and Having


show databases;
USE organization;
SHOW tables;

DESC employee;
SELECT * FROM employee;

/*Count*/
SELECT COUNT(empid)
FROM employee
WHERE dept = 'IT';

/*MIN*/
SELECT MIN(experience)
FROM employee;	

/*MAX*/
SELECT MAX(experience)
FROM employee;

/*SUM*/
SELECT SUM(experience)
FROM employee;

/*AVG*/
SELECT AVG(experience) as emp_expr
FROM employee;
SELECT * FROM employee;

/*GROUP BY clause :- GROUP BY clause divides a set of rows into subgroups depending on cloumn or expression values.
The GROUP BY clause is used with aggregate functions such as Count,SUM,AVG,MIN,MAX*/

-- Find The Dept wise employee Count
SELECT dept, COUNT(*) as employee_count
FROM employee 
GROUP BY dept;

-- Role Wise Employee Count
SELECT role, COUNT(*) AS employee_role
FROM employee
GROUP BY role;

-- Gender wise Employee Count 
SELECT gender, COUNT(*) AS employee_gender
FROM employee
GROUP BY gender;

/*HAVING CLAUSE:- Each group produced by he GROUP BY CLause is Evaluated by the HAVING Clause was add to sql
 because the WHERE Keyword cannot be used with aggregate Functions*/
 SELECT * FROM employee;
 
 SELECT dept, SUM(experience) AS total_experience
 FROM employee
 GROUP BY dept
 HAVING total_experience>=7 AND total_experience<=20;
 
 SELECT role, SUM(role) AS total_role
 FROM employee
 GROUP BY role
 HAVING total_role>=5 AND total_role<=10;
 
  /*Fetch Dept wise Emplouee count using having clause and sort the date*/
  SELECT dept, COUNT(empid) AS emp_count
  FROM employee
  GROUP BY dept
  HAVING emp_count >= 2
  ORDER BY emp_count DESC;
  
  SELECT dept, SUM(experience) AS sum_exp
  FROM employee
  GROUP BY dept
  HAVING sum_exp >=10 or sum_exp <= 30; 


