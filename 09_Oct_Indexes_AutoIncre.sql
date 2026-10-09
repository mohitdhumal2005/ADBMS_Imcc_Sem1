-- Topics Covered:- Auto_Increment, CREATE INDEX, Show Index, Drop Index

/* The  CREATE INDEX statement is used to create indexes in tables.
Indexes are used to retrieve data from the databse more quickly than otherwise.
The users cannot see the indexes, they are just used to speed up searches/queries.*/

SELECT * from Employee4;
Create Index DemoIndex on Employee4(firstName);
Create Index DemoIndex2 on Employee4(firstName, lastName);

SHOW INDEXES FROM Employee4;

DROP INDEX DemoIndex on Employee4;
DROP INDEX DemoIndex2 on Employee4;


-- Auto Increment

CREATE TABLE Person(
	PersonId INT NOT NULL AUTO_INCREMENT,
    LastName VARCHAR(20) NOT NULL,
	FirstName VARCHAR(20),
    Age INT,
    PRIMARY KEY(PersonId)
);
DESC Person;

INSERT INTO Person(FirstName, LastName, Age) 
VALUES ("Mohit","Dhumal",21),
	("Nikhil","Deo",22),
    ("Yash", "Deokate",20),
    ("Rhiya", "Gandhi",19);
SELECT * FROM Person;
