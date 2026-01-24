USE sample;

CREATE TABLE PAY (
id INT PRIMARY KEY,
name VARCHAR(25),
mode VARCHAR(20),
city VARCHAR(25)
		);
        
INSERT INTO pay
(id, name, mode, city)
values
(101, "Suraj", "Netbanking", "Beed"),
(102, "Shiv", "Credit card", "Pune"),
(103, "Krushna", "Debit card", "Pune"),
(104, "Radha", "Netbanking", "Mumbai"),
(105, "Om", "Debit card", "Delhi"),
(106, "Ravi", "Netbanking", "Delhi");

SELECT mode, COUNT(mode)
FROM pay
GROUP BY mode
ORDER BY mode ASC;

SELECT COUNT(name), city
		FROM  pay
		GROUP BY city
		HAVING MAX(marks) > 90;