CREATE DATABASE XYZ;

USE XYZ;

CREATE TABLE emp_info(
	id INT PRIMARY KEY,
    name VARCHAR(25),
    salary INT NOT NULL
		);
        
INSERT INTO emp_info
(id, name, salary)
VALUES
(1, "SHIV", 50000),
(2, "KRUSHNA", 60000),
(3, "SURAJ", 30000);

SELECT * FROM emp_info;
																	