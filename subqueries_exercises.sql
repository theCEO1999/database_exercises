USE employees;

SELECT first_name, last_name
FROM employees WHERE hire_date IN (SELECT hire_date FROM employees WHERE emp_no = '101010');

SELECT title FROM titles where emp_no IN (SELECT emp_no FROM employees WHERE first_name = 'Aamod');

SELECT DISTINCT title FROM titles where emp_no IN (SELECT emp_no FROM employees WHERE first_name = 'Aamod');

SELECT first_name, last_name, gender FROM employees WHERE emp_no IN (SELECT emp_no FROM dept_manager WHERE gender = 'F' AND to_date LIKE '9%');

# SELECT dept_name FROM departments WHERE dept_no IN (SELECT );
SELECT dept_name FROM departments
WHERE dept_no IN (
    SELECT dept_no FROM dept_manager dm
JOIN employees e on e.emp_no = dm.emp_no
                   WHERE e.gender = 'F' AND dm.to_date like '9%'
    )
ORDER BY dept_name;

SELECT first_name, last_name FROM employees WHERE emp_no = SELECT()


