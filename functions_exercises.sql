use employees;

SELECT CONCAT(first_name ,' ', last_name) AS 'full name' FROM employees WHERE first_name like 'e%' OR first_name like '%e' AND last_name LIKE '%e' OR last_name LIKE 'e%';

SELECT DAYOFMONTH(hire_date) FROM employees WHERE first_name = 'Maya';

SELECT DAYOFMONTH(hire_date) FROM employees WHERE first_name = 'Maya' ORDER BY DAYOFMONTH(hire_date);

SELECT NOW();

SELECT DATEDIFF(NOW(), hire_date) FROM employees WHERE emp_no = 10006;

SELECT * FROM employees WHERE birth_date LIKE '____%-12-25';

SELECT * FROM employees WHERE year(hire_date) REGEXP '^199'
    AND month(birth_date) = 12
    AND day(birth_date) = 25
    ORDER BY hire_date asc;

SELECT * FROM employees WHERE year(hire_date) REGEXP '^199'
    AND month(birth_date) = 12
    AND day(birth_date) = 25
    ORDER BY birth_date asc, hire_date desc;

SELECT first_name, datediff(now(), hire_date) AS 'days slaved away' FROM employees WHERE year(hire_date) REGEXP '^199'
    AND month(birth_date) = 12
    AND day(birth_date) = 25
    ORDER BY datediff(now(), hire_date) desc;








