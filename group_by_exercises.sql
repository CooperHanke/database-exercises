USE employees;

SELECT DISTINCT title
from titles;

SELECT first_name, last_name
FROM employees
WHERE last_name LIKE 'E%' AND last_name LIKE '%e'
GROUP BY first_name, last_name;

SELECT DISTINCT last_name, count(*)
from employees
WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%'
GROUP BY last_name;

SELECT gender, count(*)
FROM employees
WHERE (
  first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya'
) GROUP BY gender;