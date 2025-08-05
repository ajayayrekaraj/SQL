-- Like Operator - used to find pattern of the data
-- we have 2 wildcards in like
-- % and _
-- % - means any number of characters
-- _(underscore) - means only single character

use mavenmovies;
select * from customer;

-- fetch the data of the customers having firstname starting with m

-- starting M%
select * from customer
where first_name like 'm%';

-- fetch the data of the customers having firstname starting and ending with m

-- starting and ending %M%
select * from customer
where first_name like '%m%';

-- %M ending
select * from customer
where first_name like '%m';

select * from customer
where first_name like '_%a_';

-- limit clause
-- used to limit the number of records we want to see in the output 

select * from customer 
limit 10;

-- fetch the details of payment table by sorting  the amount by decending order

select * from payment 
order by amount desc;

select * from payment 
order by amount desc
limit 10;

-- by using limit we can even skip the records

select * from payment
limit 5,5;
-- it will skip the number of rows in 1st parameter and displays the 
-- number of records in 2nd parameter 

select * from film;

select * from film
limit 10,5;

-- distinct clause
-- used to display unique values

select * from payment;

-- syntax -- select distinct column_name from table_name
select distinct staff_id 
from payment;

-- fetch the unique customer id from payment

select distinct customer_id from payment;

-- fetch the top 30 amount transactions for staff id =1

select * from payment;

select * from payment 
where staff_id=1
order by amount desc
limit 30; 

-- fetch second lowest amount from payment
select * from payment 
order by amount desc
limit 2,1;

use mavenmovies;
select * from payment;
-- error
select distinct payment from amount
order by amount 
limit 1,1;
-- error
SELECT DISTINCT payment
order by amount
limit 1,2;
-- error
select distinct  payment
from  amount 
order by amount desc
limit 1,2;




