/* Date & time Function*/
USE user;

SELECT now();  --  Returns current Date and Time (System Time)
SELECT now() as current_datetime; --  I have Given the alias Name here

ALTER TABLE customer ADD COLUMN date DATE;
DESC customer;
SELECT * FROM customer;

--  Update the Date column of very customer:-
UPDATE customer
SET date = '2026-10-19'
WHERE custid = 1;

UPDATE customer
SET date = '2026-08-29'
WHERE custid = 2;

UPDATE customer
SET date = '2026-01-01'
WHERE custid = 3;

UPDATE customer
SET date = '2026-04-15'
WHERE custid = 4;

UPDATE customer
SET date = '2026-06-18'
WHERE custid = 5;

UPDATE customer
SET date = '2026-09-04'
WHERE custid = 6;

SELECT * FROM customer; 






