USE employees;
SELECT concat(first_name, ' ', last_name) AS name, hire_date
FROM employees
WHERE hire_date IN (
  SELECT hire_date
  FROM employees
  WHERE emp_no = 101010
);
