USE codeup_test_db;

SELECT 'ALL ALBUMS' AS INFO;
SELECT * FROM ALBUMS;

-- UPDATE ALBUMS
-- MULTIPLY ALL SALES BY 10:
SET SALES  = (SALES * 10);
SELECT * FROM ALBUMS;


SELECT 'ALL ALBUMS RELEASED BEFORE 1980' AS INFO;
SELECT NAME FROM ALBUMS WHERE RELEASE_DATE < 1980;
-- UPDATE ALBUMS TO SUBTRACT 100 YEARS FROM RELEASE DATE:
UPDATE albums
SET RELEASE_DATE = (RELEASE_DATE - 100)
WHERE RELEASE_DATE < 1980;
SELECT * FROM ALBUMS;


SELECT 'ALL ALBUMS BY MICHAEL JACKSON' AS INFO;
SELECT NAME FROM ALBUMS WHERE ARTIST = 'MICHAEL JACKSON';
-- UPDATE TO CHANGE MICHAEL JACKSON'S NAME TO PETER:
UPDATE ALBUMS
SET ARTIST = "PETER JACKSON"
WHERE ARTIST = "MICHAEL JACKSON";
SELECT ARTIST FROM ALBUMS WHERE NAME = 'THRILLER'
