
use mavenmovies;
select * from payment;

-- Functions
-- if user gives any input calculations are done to give an output

-- Numeric functions ,character functions,date functions & special functions

-- Numeric functions
-- count,sum,min,max, avg, round, ceiling, floor ,mod

-- count - count () function returns the number of records in return by a select query
select * from payment;
select count(amount) from payment; 

-- Alias -AS- temperory name 
select count(amount) as alt from payment;
select count(*) from payment;
select count(*) from film;

-- count function counts the number of records and return values,the 
-- number of records will remain same whether we count using column name or *
-- count function ignores null values

-- min - displays minimum value

select min(amount) from payment;

-- max - displays maximum value

select max(amount) as MAX from payment;

-- SUM() 
-- used to find the total amount
select SUM(amount) as total from payment;

select sum(amount),count(amount),min(amount),max(amount) from payment;

-- AVG - Average
select avg(amount) as Average from payment;

-- give me the count of unique  staff id

select count(distinct staff_id) from payment;

-- fetch the total payment collected by staff_id 1

select sum(amount) from payment 
where staff_id=1;

-- ceil - it always rounds up the values
-- 8.1 - 9

-- floor - it will always rounds down the value
-- 8.1 - 8

-- round -
-- 8.1 - 8
-- 8.8 - 9

-- while fetching query using round we can give 2 parameters
-- 1st parameter - column which we wants to round , 2nd parameter how many decimals we want to round
 
use mavenmovies;
select mod(1,2);