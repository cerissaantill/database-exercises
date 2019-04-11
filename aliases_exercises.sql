
USE EMPLOYEES;

-- TODO:
-- Return 10 employees in a result set named 'full_name' in the format of 'lastname, firstname' for each employee
-- Add the date of birth for each employee as 'DOB' to the query
-- Update the query to format full name to include the employee number so it is formatted as 'employee number - lastname, firstname'.

SELECT CONCAT(EMP_NO, ' - ', LAST_name,', ', FIRST_name) AS full_name, BIRTH_DATE AS DOB
FROM EMPLOYEES
LIMIT 10;