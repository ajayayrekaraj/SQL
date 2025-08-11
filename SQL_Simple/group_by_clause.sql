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
 
 
 -- Having Clause  
 /*
 -- where clause used to filter the data
 -- where clause works at row level data
 -- if we want to filter the data , on the data where we use aggregations
 -- or on the data which we used group by clause
 -- we need to use having clause to filter the data
 */
 
 -- fetch the data of customer whose total amount greater than 150
 
 select * from payment;
 select first_name,last_name,sum(amount) from customer as c 
 inner join payment as p
 on c.customer_id=p.customer_id
 group by first_name,last_name
 having sum(amount) >150;
 
 -- fetch the top 2 customer details whose total amount >150
 select first_name,last_name,sum(amount) from customer as c
 inner join payment as p
 on c.customer_id = p.customer_id
 group by first_name,last_name
 having sum(amount) >150
 order by sum(amount) desc
 limit 2;  
 
 -- modify the above query to show the data of active customers only
 
 select * from customer;
 
select * from customer 
where active =1;
    
 select first_name,last_name,sum(amount) from customer as c
 inner join payment as p
 on c.customer_id = p.customer_id
 where active =1
 group by first_name,last_name
 having sum(amount) >150
 order by sum(amount) desc
 limit 2;  
 
 -- where clause is used before group by clause
 
 -- sequence of 'writing' select command
 /*
 select 
 distinct
 from/join
 where
 group by
 having
 order by
 limit
 */
 
 -- sequence of 'executing' select cammand 
 /*
 from/join
 where
 group by
 having
 select
 distinct
 order by 
 limit
 */
 
 -- fetch the total amount collected by each city in india
 select * from city;
 select * from country;
 select * from payment;
 select * from customer; 
 select * from address;
 
 select ct.city,sum(amount) from payment as p
 inner join customer as c
 on p.customer_id = c.customer_id
 inner join address as a
 on a.address_id = c.address_id
 inner join city as ct
 on ct.city_id = a.city_id
 inner join country As co
 on co.country_id = ct.country_id
 where country='India'
 group by city;
 
  select country,ct.city,sum(amount) from payment as p
 inner join customer as c
 on p.customer_id = c.customer_id
 inner join address as a
 on a.address_id = c.address_id
 inner join city as ct
 on ct.city_id = a.city_id
 inner join country As co
 on co.country_id = ct.country_id
 group by country,city
 order by country asc
 

  
 
 