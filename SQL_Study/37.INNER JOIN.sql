CREATE DATABASE in_j;

USE in_j;

CREATE TABLE in_j(
	id INT PRIMARY KEY,
    name VARCHAR(25)
		);
        
INSERT INTO in_j
(id, name)
VALUES
(101, "SHIV"),
(102, "KRUSHNA"),
(103, "SURAJ");

CREATE TABLE course (
	cou_id INT,
    cou_name VARCHAR(25)
    );
    
INSERT INTO course
(cou_id , cou_name)
VALUES
(101, "Computer Science"),
(102, "Chemical Engg"),
(103, "ENTC");

SELECT * FROM in_j;
SELECT * FROM course;

#SELECT * 
#FROM in_j 
#INNER JOIN course
#ON in_j.id = course.cou_id;

SELECT * 
FROM in_j as s
INNER JOIN course as c
ON s.id = c.cou_id;


