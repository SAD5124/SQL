CREATE DATABASE sub;

USE sub;

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
#EX1
SELECT AVG(marks) #STEP 1
FROM tables;

SELECT name	#STEP 2
FROM tables
WHERE marks > 72.0000;

SELECT name, marks
FROM tables
WHERE marks > (SELECT AVG(marks) FROM tables);

#EX2 
#STEP !
SELECT rollno
FROM tables
WHERE rollno % 2 = 0;

#Step 2
SELECT name, rollno
FROM tables 
WHERE rollno IN (2,4);
 
#
SELECT rollno, name
FROM tables
WHERE rollno IN (
				SELECT rollno
				FROM tables
				WHERE rollno % 2 = 0);


#EX3
#STEP !
SELECT name
FROM tables 
WHERE city = "Delhi";

#
SELECT MAX(marks) 
FROM (
		SELECT *
        FROM tables
        WHERE city = "Delhi"
			) AS temp;
            
SELECT MAX(marks)
FROM tables
WHERE city = "Delhi";

#EX4
SELECT ( SELECT MAX(marks) FROM tables), name
	FROM tables;
    
SELECT ( SELECT marks FROM tables), name # gives error	
	FROM tables;