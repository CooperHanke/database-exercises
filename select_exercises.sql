USE codeup_test_db;
-- Let's go ahead and do the first part, showing the information we have currently at this time.
SELECT 'Displaying all entries from ''albums''' AS 'Info';
SELECT * FROM albums;
SELECT 'Albums released before 1980' AS 'Info';
SELECT * FROM albums WHERE release_year < 1980;
SELECT 'Year the album Sgt Pepper''s Lonely Hearts Club Band was released' AS 'Info';
SELECT release_date FROM albums WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';
SELECT 'Genre for the album ''Nevermind''' AS 'Info';
SELECT genre FROM albums WHERE name = 'Nevermind';
SELECT 'Albums released in the ''90''s' AS 'Info';
SELECT * FROM albums WHERE release_date BETWEEN 1990 AND 2000;
SELECT 'Albums that sold less than 20 million copies' AS 'Info';
SELECT * FROM albums WHERE sales < 20;
SELECT 'Albums that are classified as ''Rock'' only' AS 'Info';
SELECT * FROM albums WHERE genre = 'Rock';