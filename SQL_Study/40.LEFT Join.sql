CREATE DATABASE left_j;

USE left_j;

CREATE TABLE left_j(
	id INT PRIMARY KEY,
    name VARCHAR(25)
		);
        
INSERT INTO left_j
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
(102, "Chemical Engg"),
(105, "Math"),
(103, "ENTC"),
(106,"Computer Science");

SELECT * FROM left_j;
SELECT * FROM course;

#SELECT * 
#FROM left_j 
#LEFT JOIN course
#ON in_j.id = course.cou_id;

SELECT * 
FROM left_j as s
LEFT  JOIN course as c
ON s.id = c.cou_id;
