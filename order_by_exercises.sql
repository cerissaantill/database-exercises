USE EMPLOYEES;



-- 1. find all employees with first names Irena, Vidya, Maya
-- 2. update query to use OR instead of IN (did not do)
-- 3. add a condition to find everyone with those names who is also male
-- 4. order results by first name (ascending)
-- 5. order results by last name (ascending)

SELECT *
FROM employees
WHERE first_name IN ('IRENA', 'VIDYA', 'MAYA')
AND gender = 'M'
ORDER BY first_name ASC, last_name ASC;



-- 1. find all employees whose last name starts with E
-- 2. find all employees whose last name starts or ends with E
-- 3. sort results by employee number (descending)

SELECT *
FROM employees
WHERE last_name LIKE 'E%'
OR last_name LIKE '%E'
ORDER BY emp_no DESC;


-- 1. duplicate above query and update it to find all employees whose last name starts and ends with E
SELECT *
FROM employees
WHERE last_name LIKE 'E%'
AND last_name LIKE '%E'
ORDER BY emp_no DESC;


-- 1. find all employees hired in the 90s, and born on Christmas
-- 2. order results by the oldest employee who was hired last
SELECT *
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31'
AND birth_date LIKE '%-12-25'
ORDER BY birth_date ASC, hire_date DESC;



