-- Starts a new transaction
/* Begin;
-- or
START TRANSACTION -- To execute multiple statements as a single transaction,
we must explicitly start the transaction.

COMMIT:- Saves all changes made during the transaction.
ROLLBACK:- Undoes all changes made during the transaction.
SAVEPOINT:- Sets a Savepoint withiun a transaction to roll back to later 
ROLLBACK To SAVEPOINT:- Rolls back to aspecific savepoint without affecting earlier changes. */

CREATE DATABASE TCL;
USE TCL;

CREATE TABLE orders(
	order_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    status VARCHAR(50)
);
DESC orders;

-- Start the transaction --
SET autocommit = 0; /* in MySQL auto commit mode is enabled by default which means whenever we execute any SQL statement
is automatically commited/*

/* So in such cases succeded transactions are automatically commited.
To diable the auto commit mode we are using this aslo we cannot disable the auto commit mode of DDL Commands.
In many DBMS it is disable ny default */

BEGIN; 
-- or START TRANSACTION;

INSERT INTO orders VALUES(101,'Geet','Pending');
INSERT INTO orders VALUES(102,'Bob','Pending');

SELECT * FROM orders;
truncate TABLE orders;
UPDATE orders
SET customer_name = 'Raj'
WHERE order_id = 102;

COMMIT;

ROLLBACK;

INSERT INTO orders VALUES(103,'Om','Pending');
INSERT INTO orders VALUES(104,'Karan','Pending');
SAVEPOINT sp1;
SELECT * FROM orders;

UPDATE orders
SET status = 'Shipped'
WHERE order_id = 103;
SAVEPOINT sp2;

ROLLBACK to SAVEPOINT sp1;

DELETE FROM orders 
WHERE order_id = 102;

SELECT * FROM orders;
SAVEPOINT sp3;

--  We want to undo the delete but keep the update
ROLLBACK TO SAVEPOINT sp1;
ROLLBACK TO SAVEPOINT sp2;
SELECT * FROM orders;

ROLLBACK; -- Will move to the last Commit