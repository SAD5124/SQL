CREATE DATABASE tables;

USE tables;

#DROP DATABASE tables;

CREATE TABLE tables (
	rollno INT PRIMARY KEY, 
    name VARCHAR(25),
    marks INT NOT NULL,
    grade VARCHAR(1),
    city VARCHAR(20)
		);
        
INSERT INTO tables
(rollno, name, marks, grade, city)
VALUES
(1, "SHIV", 93, "A", "Mumbai"),
(2, "KRUSHNA", 96, "A", "Pune"),
(3, "SURAJ", 12, "F", "Delhi"),
(4, "RADHA", 85, "B", "Mumbai"),
(5, "LAKSHMI", 74, "C", "Delhi");

SELECT * FROM tables;

SET SQL_SAFE_UPDATES = 0; #turn off 1175 safe mode
SET SQL_SAFE_UPDATES = 1; #turn on

UPDATE tables 
SET grade = "O"
WHERE grade = "A";

#UPDATE tables
#SET marks = 28
#WHERE marks = 12;

UPDATE tables
SET marks = 66
WHERE rollno = 3;

UPDATE tables
SET grade = "D"
WHERE  marks BETWEEN 60 AND 70;

UPDATE tables         #update marks by +1
SET marks = marks + 1;  

UPDATE tables
SET marks = 12
WHERE rollno = 3;

DELETE FROM tables
WHERE marks < 33;


