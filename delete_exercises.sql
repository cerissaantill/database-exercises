
-- TODO:
-- Write SELECT statements for:
-- Albums released after 1991
-- Albums with the genre 'disco'
-- Albums by 'Whitney Houston' (...or maybe an artist of your choice)
-- Make sure to put appropriate captions before each SELECT.
-- Convert the SELECT statements to DELETE.
-- Use the MySQL command line client to make sure your records really were removed.


SELECT 'RELEASE DATE AFTER 1991' AS 'DELETED';
DELETE FROM ALBUMS WHERE RELEASE_DATE >= 1991;

SELECT 'DISCO GENRE' AS 'DELETED';
DELETE FROM ALBUMS WHERE GENRE = 'DISCO';

SELECT 'WHITNEY HOUSTON ALBUMS' AS 'DELETED';
DELETE FROM ALBUMS WHERE ARTIST = 'WHITNEY HOUSTON';

SELECT * FROM ALBUMS;