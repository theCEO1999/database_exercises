USE employees;

SELECT DISTINCT title FROM titles;

SELECT last_name FROM employees WHERE last_name LIKE 'E%' AND last_name LIKE '%E' GROUP BY last_name;

SELECT DISTINCT CONCAT(first_name,' ', last_name)AS 'Full Name' FROM employees WHERE last_name LIKE 'E%' AND last_name LIKE '%E';

SELECT COUNT(last_name), last_name FROM employees WHERE last_name LIKE '%Q%' AND last_name NOT LIKE '%QU%' GROUP BY last_name;

SELECT COUNT(first_name), gender FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') GROUP BY gender;
