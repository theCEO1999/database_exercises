use employees;

SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) FROM employees e
    JOIN dept_manager dm on e.emp_no = dm.emp_no
    JOIN departments d on dm.dept_no = d.dept_no
    WHERE dm.to_date = '9999-01-01'
    ORDER BY dept_name;

# SELECT CONCAT(e.first_name, ' ', e.last_name) AS 'Dept Manager Name', d.dept_name, dm.emp_no
# FROM employees AS e
#     JOIN dept_emp AS de
#         ON e.emp_no = de.emp_no
#     JOIN departments as d
#          ON d.dept_no = de.dept_no
#     JOIN dept_manager dm on e.emp_no = dm.emp_no
#     WHERE de.to_date = '9999-01-01';

SELECT CONCAT(e.first_name, ' ', e.last_name) AS 'Dept Manager Name', d.dept_name, dm.emp_no
FROM employees AS e
         JOIN dept_emp AS de
              ON e.emp_no = de.emp_no
         JOIN departments as d
              ON d.dept_no = de.dept_no
         JOIN dept_manager dm on e.emp_no = dm.emp_no
        WHERE gender = 'F' AND dm.to_date = '9999-01-01';

SELECT title, COUNT(title)
FROM titles t
JOIN employees e on t.emp_no = e.emp_no
JOIN dept_emp de on e.emp_no = de.emp_no
WHERE dept_no LIKE '%9' AND t.to_date LIKE '9%' AND de.to_date LIKE '9%'
GROUP BY title ORDER BY COUNT(title) DESC;


SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Full Name', s.salary
FROM employees e
JOIN dept_manager dm on e.emp_no = dm.emp_no
JOIN departments d on dm.dept_no = d.dept_no
JOIN salaries s on e.emp_no = s.emp_no
WHERE dm.to_date LIKE '9%' AND s.to_date LIKE '9%'
ORDER BY d.dept_name;

# subqueries lecture

USE codeup_test_db;

# INSERT INTO preferences (person_id, album_id) values ((SELECT person_id FROM  persons WHERE first_name = 'Tareq'), (SELECT album_id FROM albums WHERE  album_name = 'Led Zeppelin IV'));
