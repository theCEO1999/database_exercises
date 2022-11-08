USE codeup_test_db;

SELECT * from albums;
SELECT * FROM albums WHERE release_date < 1980;
SELECT * FROM albums WHERE artist = 'Michael Jackson';


UPDATE albums
SET sales = sales * 10
WHERE id > 0;

SELECT sales FROM albums WHERE sales > 1;

UPDATE albums
SET release_date=(1800)
WHERE release_date > 1980;

SELECT release_date FROM albums WHERE release_date=1800;

UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';

SELECT artist FROM albums WHERE artist = 'Peter Jackson';


