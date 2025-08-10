#  Group by Clause

-- gender , score , location
-- Aggregate functions - sum,min,max,count,avg,mod

-- Group bu cluase - used with aggregate functions like min(),max()
-- count(),avg() to summarize the data based on spefic table.

use mavenmovies;

select * from payment;
-- Fetch the total amount collected by staff_id

select staff_id ,sum(amount) from payment
group by staff_id;

-- Whatever column names we use inside group by clause
-- we should use that col names in select command

 -- we can use multiple aggregations
 select staff_id,count(*) from payment
 group by staff_id;
 
 select staff_id,count(*),sum(amount) from payment
 group by staff_id;
 
 -- with rollup - modifier
 -- with rollup - used with group by clause,it give over all total of values
 -- basically it adds the complete data and gives result
 
 select staff_id,sum(amount) from payment
 group by staff_id;
 
 select staff_id,sum(amount) from payment
 group by staff_id with rollup;
 
 -- here in max and min functions if we use with rollup
 -- it wont add data it will show from over 
 -- all data what is max and what is min
 
 -- total amount paid by each customer
 
 select * from customer;
 select * from payment;
 
 select customer_id,sum(amount) from payment
 group by customer_id;
 
 select customer_id, sum(amount) from payment
 group by customer_id;
 
 select first_name,last_name,sum(amount) from payment as p
 inner join customer as c
 on p.customer_id=c.customer_id
 group by first_name,last_name;
 
 
 