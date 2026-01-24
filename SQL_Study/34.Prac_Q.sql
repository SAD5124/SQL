#Q: In Student table
#   	a. Change name of column "name" to "full_form"
#       b. Delete all student who schore marks less than 80
#       c. Delete column for grades
    
CREATE DATABASE prac;

USE prac;

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

SELECT * FROM student;

ALTER TABLE student   		#a
CHANGE COLUMN name full_name VARCHAR(25);


DELETE FROM student #B
WHERE marks < 80;

ALTER TABLE student 
DROP COLUMN grade;