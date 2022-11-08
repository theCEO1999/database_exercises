USE codeup_test_db;

SELECT name FROM albums WHERE artist = 'Pink Floyd';
SELECT release_date FROM albums WHERE name = 'Sgt. Peppers Lonely Hearts Club Band';
SELECT * FROM albums WHERE release_date >= 1990 AND release_date <=1999;
SELECT name FROM albums WHERE genre = 'Rock';
