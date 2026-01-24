CREATE DATABASE sample;

USE sample;

CREATE TABLE student (
	rollno INT PRIMARY KEY, 
    name VARCHAR(25),
    marks INT NOT NULL,
    grade VARCHAR(1),
    city VARCHAR(20)
		);
        
INSERT INTO student 
(rollno, name, marks, grade, city)
VALUES
(1, "SHIV", 93, "A", "Mumbai"),
(2, "KRUSHNA", 96, "A", "Pune"),
(3, "SURAJ", 12, "F", "Delhi"),
(4, "RADHA", 85, "B", "Mumbai"),
(5, "LAKSHMI", 74, "C", "Delhi");

#SELECT name, marks FROM student;
#SELECT * FROM student;
SELECT DISTINCT city FROM student;

SELECT * FROM student WHERE marks > 90;

#SELECT * 
#FROM student 
#WHERE city = "Mumbai";

SELECT *
FROM student 
WHERE marks + 10 > 100;

SELECT *
FROM student 
WHERE marks = 85;

SELECT *
FROM student 
WHERE city = "Mumbai" AND marks > 90;

SELECT *
FROM student 
WHERE city = "Mumbai" OR marks > 90;

SELECT *
FROM student 
WHERE marks BETWEEN 80 AND 90;

SELECT *
FROM student 
WHERE city IN ("Pune", "Mumbai", "Beed");

SELECT *
FROM student 
WHERE city NOT IN ("Delhi", "Mumbai", "Beed");

SELECT * FROM student LIMIT 3;

SELECT name, rollno FROM student 
LIMIT 4;

SELECT *    	#find TOP 3 from list
FROM student 
WHERE marks > 95
LIMIT 3;

SELECT * FROM student 
ORDER BY city ASC;

SELECT * FROM student 
ORDER BY city DESC;

SELECT * FROM student    #TOP 3 from LIST in DESC 
ORDER BY marks DESC
LIMIT 3;

SELECT MAX(marks) 
FROM student;

SELECT MIN(marks) 
FROM student;

SELECT avg(marks) 
FROM student;

SELECT COUNT(marks) 
FROM student;

SELECT city, count(name)
FROM student
GROUP BY city;

SELECT city,name, count(marks)
FROM student
GROUP BY city, name;

SELECT city, AVG(marks)
FROM student
GROUP BY city;

		SELECT city, COUNT(rollno)
		FROM student
		GROUP BY city
        HAVING MAX(marks) > 90
        ORDER BY city DESC;
        
        