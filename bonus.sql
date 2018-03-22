-- includes drills and bonuses
-- drills follow
-- concat the max salaries of the first two employees

-- hardest bonus
SELECT count(*) AS 'Number of employees hired the year of and the year after ''Nevermind'' was released'
FROM employees.employees e
  JOIN employees.titles t
  ON e.emp_no = t.emp_no
WHERE hire_date LIKE concat(
    (
      SELECT release_date
      FROM codeup_test_db.albums
      WHERE name = 'Nevermind')
    ,'%')
OR
      hire_date LIKE concat(
    (
      SELECT release_date
      FROM codeup_test_db.albums
      WHERE name = 'Nevermind') + 1
    , '%');

SELECT count(*) AS 'Number of current employees hired the year of and the year after ''Nevermind'' was released'
FROM employees.employees e
  JOIN employees.titles t
    ON e.emp_no = t.emp_no
WHERE hire_date LIKE concat(
    (
      SELECT release_date
      FROM codeup_test_db.albums
      WHERE name = 'Nevermind')
    ,'%') AND t.to_date > curdate()
      OR
      hire_date LIKE concat(
          (
            SELECT release_date
            FROM codeup_test_db.albums
            WHERE name = 'Nevermind') + 1
          , '%') AND t.to_date > curdate();

SELECT count(*) AS 'Employees that have left that were hired in the criteria above'
FROM employees.employees e
  JOIN employees.titles t
    ON e.emp_no = t.emp_no
WHERE hire_date LIKE concat(
    (
      SELECT release_date
      FROM codeup_test_db.albums
      WHERE name = 'Nevermind')
    ,'%') AND NOT t.to_date > curdate()
      OR
      hire_date LIKE concat(
          (
            SELECT release_date
            FROM codeup_test_db.albums
            WHERE name = 'Nevermind') + 1
          , '%') AND NOT t.to_date > curdate();
