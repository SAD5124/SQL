CREATE DATABASE rel;

USE rel;

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

ALTER TABLE student            #ADD column
ADD COLUMN age INT NOT NULL
DEFAULT 19;

ALTER TABLE student				#MODIFY datatype, constraint not column name
MODIFY age VARCHAR(2);

ALTER TABLE student  			#CHANGE Column name , datatype, constraint
CHANGE COLUMN age stu_age INT;

ALTER TABLE student				#DROP column
DROP COLUMN stu_age;

ALTER TABLE student			#RENAME Table
RENAME To new_student;

TRUNCATE TABLE student;		#delete table data

SELECT * FROM student;
SELECT * FROM new_student;