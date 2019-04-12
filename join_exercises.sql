USE EMPLOYEES;


-- Query that shows each dept. along with the name of hte current manager for that dept.
select d.dept_name as 'Department Name ', concat(e.first_name, ' ', e.last_name) as 'Department Manager'
from employees e
       join dept_manager dm on e.emp_no = dm.emp_no
       join departments d on dm.dept_no = d.dept_no
where dm.to_date > curdate()
order by d.dept_name;



-- Find the name of all departments currently managed by women
select d.dept_name as 'Department Name ', concat(e.first_name, ' ', e.last_name) as 'Department Manager'
from employees e
       join dept_manager dm on e.emp_no = dm.emp_no
       join departments d on dm.dept_no = d.dept_no
where dm.to_date > curdate()
  and e.gender = 'F'
order by d.dept_name;



-- Find current titles of employees currently working in the Customer Service department
select t.title, count(t.title) as 'Total'
from titles t
       join dept_emp de on de.emp_no = t.emp_no
where t.to_date > curdate()
  AND de.dept_no = 'd009'
  AND de.to_date > curdate()
group by t.title;




-- Find the current salary of all current managers
select d.dept_name                            as 'Department Name ',
       concat(e.first_name, ' ', e.last_name) as 'Department Manager',
       s.salary                               as 'Salary'
from employees e
       join dept_manager dm on e.emp_no = dm.emp_no
       join departments d on dm.dept_no = d.dept_no
       join salaries s on e.emp_no = s.emp_no
where dm.to_date > curdate()
  AND s.to_date > curdate()
order by d.dept_name;




-- BONUS - Find the names of all current employees, their dept name, and their current manager's name
select concat(e.first_name, ' ', e.last_name),
       d.dept_name,
       concat(managers.first_name, ' ', managers.last_name)
from employees e
       join dept_emp de on e.emp_no = de.emp_no
       join departments d on de.dept_no = d.dept_no
       join dept_manager dm on dm.dept_no = de.dept_no
       join employees managers on managers.emp_no = dm.emp_no
where dm.to_date > curdate()
  AND de.to_date > curdate()
order by d.dept_name;













