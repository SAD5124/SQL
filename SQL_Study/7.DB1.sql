 CREATE DATABASE collage;
 
 #CREATE DATABASE collage;
 #CREATE DATABASE IF NOT EXISTS collage;
 
 #DROP DATABASE company;
 #DROP DATABASE IF EXISTS company;
 
 USE collage;
 
 CREATE TABLE student (
		id INT PRIMARY KEY,
        name VARCHAR(25),
        age INT NOT NULL
			);
            
INSERT INTO student VALUES( 1, "SURAJ", 22);
INSERT INTO student VALUES( 2, "HARSH", 19);

SELECT * FROM student;

#SHOW DATABASES;
#SHOW TABLES;