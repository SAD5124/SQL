CREATE DATABASE ex_j;

USE ex_j;

CREATE TABLE ex_j(
	id INT PRIMARY KEY,
    name VARCHAR(25)
		);
        
INSERT INTO ex_j
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

SELECT * FROM ex_j;
SELECT * FROM course;

SELECT * 
FROM ex_j as s
LEFT  JOIN course as c			#LEFT EXCLUSIVE JOIN
ON s.id = c.cou_id
WHERE c.cou_id IS NULL;

SELECT * 
FROM ex_j as s
RIGHT  JOIN course as c			#RIGHT EXCLUSIVE JOIN
ON s.id = c.cou_id
WHERE s.id IS NULL;
