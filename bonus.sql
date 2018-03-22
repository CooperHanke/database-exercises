-- includes drills and bonuses
SELECT *
  FROM employees.employees
  WHERE hire_date LIKE codeup_test_db.albums.release_date IN (
  SELECT release_date
  FROM codeup_test_db.albums
  WHERE name = 'Nevermind'
  );

SELECT count(*)
FROM employees.employees
WHERE hire_date LIKE concat((
SELECT release_date
FROM codeup_test_db.albums
WHERE name = 'Nevermind'),'%')
OR hire_date LIKE concat((
  SELECT release_date
  FROM codeup_test_db.albums
  WHERE name = 'Nevermind') + 1, '%');