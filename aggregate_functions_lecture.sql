# Aggregate Functions

use employees;

SELECT COUNT(first_name) FROM employees GROUP BY gender;

SELECT  AVG(DATEDIFF(hire_date, birth_date))/365 FROM employees;

SELECT  MIN(DATEDIFF(hire_date, birth_date))/365 FROM employeeS;

SELECT  MAX(DATEDIFF(hire_date, birth_date))/365 FROM employees;

# TWO LINES BELOW ARE FUNCTIONALLY IDENTICAL
SELECT first_name FROM employees GROUP BY first_name;
SELECT DISTINCT first_name FROM employees;

SELECT COUNT(first_name), first_name FROM employees GROUP BY first_name;

