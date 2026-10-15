/* WHERE Clause
	Order by Clause with descending and ascending
    upper and Lower case Functions
    <= >= Operators in where clause
    Concatenate two columns with alias name
    Substring Function
    Instr Function
    */
show databases;
CREATE DATABASE User;
USE User;

CREATE TABLE customer(
	custid INT,
    custname VARCHAR(20),
    city VARCHAR(20),
    product VARCHAR(20),
    price INT
);
DESC customer;

INSERT INTO customer (custid,custname,city,product,price)
	VALUES (1,'Mohit','Pune','Mobile',20000),
			(2,'Nikhil','Mumbai','Laptop',60000),
            (3, 'Parnika','Bhagwat','TV',55000);
SELECT * FROM customer;
ALTER TABLE customer ADD CONSTRAINT custid_pk PRIMARY KEY(custid);

SELECT custid,custname,city 
FROM customer;

SELECT * FROM customer
WHERE custid = 3 or custid = 2; -- returning Two Id's 

CREATE TABLE clonecustomer as SELECT * FROM customer; -- Cloning the table Customer
SELECT * FROM clonecustomer;						-- Retreiving records From cloned table 
DROP TABLE clonecustomer;

/* Where Clause */
SELECT custname, city
FROM customer
WHERE custid = 1;

SELECT custname, city
FROM customer
WHERE price>35000;

SELECT custname, city
FROM customer
WHERE price<35000;

SELECT * 
FROM customer
WHERE city = 'Pune';

/* Sorting Data using Order By Single column*/
SELECT * FROM customer
ORDER BY price;  -- Ascending Order By default

SELECT * FROM customer
ORDER BY price DESC;

-- Sorting data by Multiple Columns:
SELECT * 
FROM customer
ORDER BY city,price; 

SELECT * FROM customer
ORDER BY city DESC, price ASC;

--  Upper and Lower Case Functions: 
SELECT upper(custname), lower(product)
FROM customer
WHERE custid < 3;

ALTER TABLE customer ADD COLUMN lastname VARCHAR(20);
DESC customer;

UPDATE customer
set lastname = 'Dhumal'
WHERE custid = 1;

UPDATE customer
set lastname = 'Deo'
WHERE custid = 2;

UPDATE customer
set lastname = 'Bhagwat'
WHERE custid = 3;

UPDATE customer
set city = 'Nashik'
where custid = 3;
SELECT * FROM customer;

/* concatenate two Columns */
SELECT concat(custname,' ',lastname) AS Fullname -- I have Given Alias Name 
FROM customer;

ALTER TABLE customer MODIFY COLUMN lastname VARCHAR(20) AFTER custname;
SELECT * FROM customer;

/* Use of SUBSTR and INSTR functions*/
SELECT * FROM customer;
SELECT substr(custname,1,3) FROM customer; --   Printing first three letters of custname
SELECT substr(custname,0,3) FROM customer;  -- Zero as kahich nahiye
SELECT substr(custname,1,0) FROM customer;
SELECT substr(custname,1,1) FROM customer;  --     Printing only one letter

SELECT instr(custname, 'a') AS position FROM Customer; -- Returns the index of 'i'  

INSERT INTO customer (custid,custname)
VALUES (4,'Arav'),
		(5,'Avinash');
SELECT * FROM customer;

--  Performing Both Functions in single query (substr and instr)
SELECT substr(custname,1,2) AS Substring , instr(custname,'i') AS Position
FROM customer; 

SELECT substr(custname,1,2) AS Substring , instr(custname,'i') AS Position
FROM customer
WHERE custid<3; 


