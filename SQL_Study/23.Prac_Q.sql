CREATE DATABASE sample;
# avg marks in each city in ascending order
USE sample;

CREATE TABLE stu (
	rollno INT PRIMARY KEY, 
    name VARCHAR(25),
    marks INT NOT NULL,
    grade VARCHAR(1),
    city VARCHAR(20)
		);
        
INSERT INTO stu 
(rollno, name, marks, grade, city)
VALUES
(1, "SHIV", 93, "A", "Mumbai"),
(2, "KRUSHNA", 96, "A", "Pune"),
(3, "SURAJ", 12, "F", "Delhi"),
(4, "RADHA", 85, "B", "Mumbai"),
(5, "LAKSHMI", 74, "C", "Delhi");

SELECT city, AVG(marks)
FROM stu
GROUP BY city
ORDER BY city ASC;

SELECT city, AVG(marks)
FROM stu
GROUP BY city
ORDER BY city DESC;

SELECT grade, COUNT(grade)
FROM stu
GROUP BY grade
ORDER BY grade ASC;