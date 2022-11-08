USE codeup_test_db;
DROP TABLE IF EXISTS albums;
CREATE TABLE albums(
    id INTEGER NOT NULL AUTO_INCREMENT,
    artist VARCHAR(50) NOT NULL,
    name VARCHAR(50) NOT NULL,
    release_date INTEGER NOT NULL,
    sales FLOAT NOT NULL,
    genre VARCHAR(55),
    PRIMARY KEY(id)
);




