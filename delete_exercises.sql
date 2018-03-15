USE codeup_test_db;
SELECT 'Albums released after 1990' AS 'Info';
SELECT * FROM albums WHERE release_date > 1991;
SELECT 'Albums with the genre disco' AS 'Info';
SELECT * FROM albums WHERE genre = 'Disco';
SELECT 'Albums by Metallica' AS 'Info';
SELECT * FROM albums WHERE artist = 'Metallica';