-- CTE - common table expression

-- It is a kind of temporary table which has the existance
-- only for that query

use mavenmovies;

select * from film;

with cte as
(select * from film)
select title,description from cte;

/*
find the average salary of employees in the IT department and list
employees who earns more than that average
*/

-- By using sub queries

select name,department from 
employee where salary >
(select avg(salary) from employee
where department = 'IT');

-- By using CTE

with Average_salary as
(select avg(salary) as avg_salary 
from employee
where department = 'IT')
select name,salary from employees,Average_salary
where salary > Average_salary.avg_salary;