USE employees;
SELECT * FROM employees WHERE (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya') AND gender = 'M'
ORDER BY last_name, first_name DESC;
SELECT * FROM employees WHERE last_name LIKE 'E%';
SELECT * FROM employees WHERE hire_date BETWEEN '1990-01-01' AND '2000-01-01';
SELECT * FROM employees WHERE birth_date LIKE '%-12-25';
SELECT * FROM employees WHERE last_name LIKE '%q%';
SELECT * FROM employees WHERE last_name LIKE 'E%' OR last_name LIKE '%E' ORDER BY emp_no DESC;
SELECT concat(first_name, ' ', last_name) FROM employees WHERE last_name LIKE 'E%' AND last_name LIKE '%E';
SELECT datediff(curdate(), hire_date) FROM employees WHERE birth_date LIKE '%-12-25' AND (hire_date BETWEEN '1990-01-01' AND '2000-01-01')
ORDER BY birth_date ASC, hire_date DESC LIMIT 5 OFFSET 45;
SELECT * FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';