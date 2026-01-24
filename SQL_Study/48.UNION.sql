CREATE DATABASE uni;

USE uni;

CREATE TABLE emp (
	id INT PRIMARY KEY, 
    name VARCHAR(25),
    manager_id INT 
		);
        
INSERT INTO emp
(id, name, manager_id)
VALUES
(101, "SHIV", 103 ),
(102, "KRUSHNA",104),
(103, "SURAJ", NULL),
(104, "RADHA", 103);

SELECT * FROM emp;

SELECT manager_id FROM emp
UNION								#Remove Duplicates give unique values
SELECT manager_id FROM emp;

SELECT name FROM emp
UNION 
SELECT name FROM emp;

SELECT name FROM emp
UNION ALL							#Allow Duplicates, give all values 
SELECT name FROM emp;