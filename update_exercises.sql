USE codeup_test_db;

SELECT 'All info on the table right now' AS 'Before';

SELECT *
FROM albums;

SELECT 'All albums released before 1980' AS 'Before';

SELECT *
FROM albums
WHERE release_date < 1980;

SELECT 'All albums by Michael Jackson' AS 'Before';

SELECT *
FROM albums
WHERE artist = 'Michael Jackson';

SELECT 'Making all albums 10 times more popular' AS 'Info!';

UPDATE albums
SET sales = sales * 10;

SELECT 'All info on the table after change' AS 'After';

SELECT *
FROM albums;

SELECT 'Moving these albums back to the 1800''s, like a used Hot Tub Time Machine... where they have no hot tubs' AS 'Info!';

UPDATE albums
SET release_date = release_date - 100
WHERE release_date < 1980;

SELECT 'All albums released before 1880' AS 'After';

SELECT *
FROM albums
WHERE release_date < 1980;

SELECT 'Changing the name from Michael Jackson to Peter Jackson' AS 'Info!';

UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';

SELECT 'All albums previously by Michael Jackson' AS 'After';

SELECT *
FROM albums
WHERE artist = 'Peter Jackson';