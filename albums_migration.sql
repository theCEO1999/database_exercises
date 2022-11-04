USE codeup_test_db;
DROP TABLE IF EXISTS albums;
CREATE TABLE albums(
    id INTEGER NOT NULL AUTO_INCREMENT,
    artist VARCHAR(35) NOT NULL,
    name VARCHAR(35) NOT NULL,
    release_date DATETIME NOT NULL,
    sales DOUBLE NOT NULL,
    genre VARCHAR(55),
    PRIMARY KEY(id)
);




