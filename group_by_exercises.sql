USE EMPLOYEES;


-- In your script, use DISTINCT to find the unique titles in the titles table
SELECT DISTINCT title
FROM EMPLOYEES.TITLES;


-- find just the unique last names that start and end with 'E' using GROUP BY
SELECT last_name
FROM EMPLOYEES.EMPLOYEES
WHERE last_name LIKE 'E%E'
GROUP BY last_name;


-- Update your previous query to now find unique combinations of first and
--  last name where the last name starts and ends with 'E'. You should get 846 rows
SELECT CONCAT(first_name,' ', last_name) AS full_name
FROM EMPLOYEES.EMPLOYEES
WHERE last_name LIKE 'E%E'
GROUP BY full_name;


-- Find the unique last names with a 'q' but not 'qu'
SELECT last_name
FROM EMPLOYEES.EMPLOYEES
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%'
GROUP BY last_name;


-- Add a COUNT() to your results and use ORDER BY to make it easier to find employees
--  whose unusual name is shared with others.
SELECT last_name, COUNT(last_name)
FROM EMPLOYEES.EMPLOYEES
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%'
GROUP BY last_name
ORDER BY COUNT(last_name) DESC;


-- counts the number of employees for each gender with the names listed (irena, vidya, maya)
SELECT gender, COUNT(*)
FROM EMPLOYEES.EMPLOYEES
WHERE first_name IN ('IRENA', 'VIDYA', 'MAYA')
GROUP BY gender
ORDER BY COUNT(gender)DESC;


-- counts total of the names that are M and F and displays count by name and gender:
SELECT first_name, gender, COUNT(*)
FROM EMPLOYEES.EMPLOYEES
WHERE first_name IN ('IRENA', 'VIDYA', 'MAYA')
GROUP BY gender, first_name
ORDER BY COUNT(gender)DESC, COUNT(first_name)DESC;