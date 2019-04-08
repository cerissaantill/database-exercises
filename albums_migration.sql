USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums(
id INT UNSIGNED NOT NULL AUTO_INCREMENT,
artist VARCHAR(100) NOT NULL,
record_name VARCHAR(100) NOT NULL,
release_date INT UNSIGNED NOT NULL,
sales DECIMAL(9,5),  -- 1234.56789  (9 spaces, 5 to right of decimal)
genre VARCHAR(50) NOT NULL,
PRIMARY KEY (id)

);