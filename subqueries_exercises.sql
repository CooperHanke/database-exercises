USE employees;
SELECT concat(first_name, ' ', last_name) AS name, hire_date
FROM employees
WHERE hire_date IN (
  SELECT hire_date
  FROM employees
  WHERE emp_no = 101010
);
SELECT title
FROM titles
WHERE emp_no IN (
  SELECT emp_no
  FROM employees
  WHERE first_name = 'Aamod'
);
SELECT concat(first_name, ' ', last_name) AS current_female_managers
FROM employees
WHERE gender = 'F' AND emp_no IN (
  SELECT emp_no
  FROM titles
  WHERE title = 'Manager'
  AND to_date > now()
);