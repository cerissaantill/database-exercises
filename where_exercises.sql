USE EMPLOYEES;


-- 1. find all employees with first names Irena, Vidya, Maya
-- 2. update query to use OR instead of IN (did not do)
-- 3. add a condition to find everyone with those names who is also male
SELECT *
FROM employees
WHERE first_name IN ('IRENA', 'VIDYA', 'MAYA')
AND gender = 'M';



-- 1. find all employees whose last name starts with E
-- 2. find all employees whose last name starts or ends with E
SELECT *
FROM employees
WHERE last_name LIKE 'E%' OR last_name LIKE '%E';

-- 3. duplicate above query and update it to find all employees whose last name starts and ends with E
SELECT *
FROM employees
WHERE last_name LIKE 'E%' AND last_name LIKE '%E';


-- 1. find all employees hired in the 90s:
SELECT *
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31';


-- 1. find all employees born on Christmas:
SELECT *
FROM employees
WHERE birth_date LIKE '%12-25';


-- 1. find all employees with a q in their last name:
SELECT *
FROM employees
WHERE last_name LIKE '%q%';


-- 1. find all employees hired in the 90s and born on Christmas
SELECT *
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31'
AND birth_date LIKE '%12-25';


-- 1. find all employees with a q in their last name but not qu
SELECT *
FROM employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%';





# you can highlight what you want to run and command + return will run only what's highlighted
