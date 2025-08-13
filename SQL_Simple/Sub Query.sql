# Sub Queries

-- Sub Queries - query with in a query
-- If a query is nested in another query to retrieve the results 
-- that query is called as Subquery.

-- Basically sub query contains 2 parts 
-- 1.Inner query - subquery
-- 2.Outer query - Main Query

-- Display the employee details whose salary is greater than the
-- average salary of all the employees

use practise_sql;

select * from employee;

select avg(emp_sal) from employee;

select * from employee /* Outer Query -Main Query*/
where emp_sal> 
(select avg(emp_sal) from employee); /* Inner query - Sub Query*/



