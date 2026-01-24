CREATE DATABASE fk;

USE fk;

CREATE TABLE student (
	rollno INT PRIMARY KEY, 
    name VARCHAR(25),
    marks INT NOT NULL,
    grade VARCHAR(1),
    city VARCHAR(20)
		);
        
CREATE TABLE course (
	cou_id INT PRIMARY KEY,
    cou_name VARCHAR(25)
    );
    
INSERT INTO course
(cou_id, cou_name)
VALUES
(101, "Computer Science"),
(102, "Chemical Engg"),
(103, "ENTC");

UPDATE course
SET cou_id = 104
WHERE cou_id = 102;
        
CREATE TABLE teacher (
	teach_id INT PRIMARY KEY, 
    teach_name VARCHAR(25),
    cou_id INT,
    FOREIGN KEY (cou_id) REFERENCES course(cou_id)
    ON UPDATE CASCADE    	#only for, changes in Course table reflect in teacher table in CASCADE
    ON DELETE CASCADE
		);
        
INSERT INTO teacher
(teach_id, teach_name, cou_id)
VALUES
(11, "Shivji", 101),
(22, "Krushnaji", 103),
(33, "Radhaji", 102),
(44, "Ganeshji", 102);

#DROP TABLE teacher;

SELECT * FROM course;
SELECT * FROM teacher;