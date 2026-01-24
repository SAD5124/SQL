CREATE DATABASE full_j;

USE full_j;

CREATE TABLE full_j(
	id INT PRIMARY KEY,
    name VARCHAR(25)
		);
        
INSERT INTO full_j
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

SELECT * FROM full_j;
SELECT * FROM course;

#SELECT * 
#FROM full_j 
#LEFT JOIN course
#ON full_j.id = course.cou_id
#UNION
#SELECT *
#FROM full_j
#RIGHT JOIN course
#ON full_j.id = course.cou_id;

SELECT * 
FROM full_j as s
LEFT  JOIN course as c
ON s.id = c.cou_id
UNION
SELECT * 
FROM full_j as s
RIGHT  JOIN course as c
ON s.id = c.cou_id;
