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

-- In sub queries the output of inner query will be given
-- as input to the outer query
-- Always we need to write sub query inside parenthesis only

-- Types of sub queries
-- single Row sub query / Scalar sub query
-- Multi Row Sub Query
-- Corelated sub query
-- Non corelated sub query

-- Single Row Sub Query - it returns a single value
-- i.e it will always displays single row and single column

use practise_sql;
select * from employee;
select * from employee /* Outer Query -Main Query*/
where emp_sal> 
(select avg(emp_sal) from employee); /* Inner query - Sub Query*/

-- aggregate functions - sum,min,max,count,avg -single value only
-- expressions which will display output as single values
-- single valued operators - =,>,<,>=,<=,!=

use mavenmovies;
select * from payment;

-- fetch the data of those transactions where amount paid is greater 
-- than average of amount

select amount from payment
where amount > (select avg(amount) from payment);

-- find the second highest amount 

select amount from payment
order by amount desc
limit 1,1;

select max(amount) from payment
where amount<(select max(amount) from payment);

-- Multi Row Sub Query
-- if the sub query returns the output as more than 1 or 
-- if it returns multiple rows

use practise_sql;
select * from set2;
alter table set2 add fees int;  
insert into fees 
values (12000),(15000),(16000);

-- Correlated sub query

-- Non correlated sub query
-- Inner query /sub query  will not be related to the outer query
-- If we execute query/sub query standalone we will get output

-- 

