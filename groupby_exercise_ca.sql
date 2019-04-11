USE EMPLOYEES;


SELECT DISTINCT title
FROM TITLES;


SELECT last_name
FROM employees
WHERE last_name LIKE 'E%e'
GROUP BY last_name;