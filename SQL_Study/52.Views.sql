CREATE DATABASE view;

USE view;

CREATE TABLE view (
	rollno INT PRIMARY KEY, 
    name VARCHAR(25),
    marks INT NOT NULL,
    grade VARCHAR(1),
    city VARCHAR(20)
		);
        
INSERT INTO view
(rollno, name, marks, grade, city)
VALUES
(1, "SHIV", 93, "A", "Mumbai"),
(2, "KRUSHNA", 96, "A", "Pune"),
(3, "SURAJ", 12, "F", "Delhi"),
(4, "RADHA", 85, "B", "Mumbai"),
(5, "LAKSHMI", 74, "C", "Delhi");

SELECT * FROM view;

CREATE VIEW view1 AS						#for giving only view to teacher about student which has name, rollno, marks
SELECT rollno, name, marks FROM view;

SELECT * FROM view1;						#we can apply operation on this view but it is virtual tables

SELECT * FROM view1
WHERE marks > 90;

DROP VIEW view1;
