USE employees;
-- get the department name, then grab the manager of the dept
SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM departments AS d
  JOIN dept_manager AS dm
    ON d.dept_no = dm.dept_no
  JOIN employees as e
    ON dm.emp_no = e.emp_no
WHERE dm.to_date = '9999-01-01'
ORDER BY d.dept_name;

-- find the name of all departments currently managed by women
USE employees;
SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM departments AS d
  JOIN dept_manager AS dm
    ON d.dept_no = dm.dept_no
  JOIN employees as e
    ON dm.emp_no = e.emp_no
WHERE dm.to_date = '9999-01-01' AND gender = 'F'
ORDER BY d.dept_name;

-- find the current titles of employees currently working in the customer service dept
-- titles -> employees -> dept_emp
USE employees;
SELECT t.title AS 'Title', count(*) AS 'Count'
FROM titles AS t
  JOIN employees e
    ON t.emp_no = e.emp_no
  JOIN dept_emp AS emp
    ON e.emp_no = emp.emp_no
  JOIN departments d
    ON emp.dept_no = d.dept_no
WHERE d.dept_name = 'Customer Service' AND emp.to_date = '9999-01-01'
  AND t.to_date > NOW()
GROUP BY t.title;

-- get department name | full name of manager | salary of manager in ?
USE employees;
SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager', concat('$ ',s.salary) AS 'Salary'
FROM departments AS d
  JOIN dept_manager AS dm
    ON d.dept_no = dm.dept_no
  JOIN employees AS e
    ON dm.emp_no = e.emp_no
  JOIN salaries AS s
    ON e.emp_no = s.emp_no
WHERE dm.to_date = '9999-01-01' AND s.to_date = '9999-01-01'
ORDER BY d.dept_name;

-- get employee's full name | that employee's dept | that dept's manager
SELECT concat(e.first_name, ' ',e.last_name) AS 'Employee Name', d.dept_name AS 'Department Name',
  concat(e2.first_name, ' ', e2.last_name) AS 'Manager Name'
FROM employees AS e
  JOIN dept_emp AS emp
    ON e.emp_no = emp.emp_no
  JOIN departments d ON emp.dept_no = d.dept_no
  JOIN dept_manager manager ON d.dept_no = manager.dept_no
  JOIN employees e2 ON manager.emp_no = e2.emp_no
WHERE manager.to_date > curdate() AND emp.to_date > curdate();

