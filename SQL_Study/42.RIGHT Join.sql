CREATE DATABASE right_j;

USE right_j;

CREATE TABLE right_j(
	id INT PRIMARY KEY,
    name VARCHAR(25)
		);
        
INSERT INTO right_j
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

SELECT * FROM right_j;
SELECT * FROM course;

#SELECT * 
#FROM right_j 
#RIGHT JOIN course
#ON right_j.id = course.cou_id;

SELECT * 
FROM right_j as s
RIGHT JOIN course as c
ON s.id = c.cou_id;
