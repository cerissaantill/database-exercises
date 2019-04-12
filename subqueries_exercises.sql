USE EMPLOYEES;


-- 1. Find all employees with the same hire date as employee 101010 using a sub-query (69 rows)
SELECT *
FROM employees
WHERE hire_date IN (
SELECT hire_date
FROM employees
WHERE emp_no = '101010'
);


-- 2. Find all titles held by all employees with the first name Aamod (314 total, 6 unique titles)
SELECT title
FROM titles
WHERE emp_no IN
  (SELECT emp_no
  FROM employees
  WHERE first_name = 'Aamod')
;


-- 3. Find all the current dept managers that are female (4)
SELECT first_name, last_name
FROM employees
WHERE emp_no IN
  (SELECT emp_no
  FROM dept_manager
  WHERE emp_no IN
       (SELECT emp_no
        FROM employees
        WHERE gender = 'F'
        )
  AND to_date > now()
  );






-- BONUS
-- 1. Find all the dept names that currently have female managers

SELECT *
FROM departments
WHERE dept_no IN (
  SELECT dept_no
  FROM dept_manager
  JOIN employees e ON dept_manager.emp_no = e.emp_no
  WHERE to_date > now()
  AND e.gender = 'F'
  );


-- 2. Find the first and last name of the employees with the highest salary

SELECT first_name, last_name
FROM employees
WHERE emp_no = (
  SELECT emp_no FROM salaries
  WHERE salary = (SELECT max(salary) FROM salaries));















