# JOINS
-- whenever we want to combine two tables or extract data from multiple tables then we use join
/*
when the data is in 2 or more tables and if we want to bring that data
from multiple tables into single view, we use joins

joins are used to combine rows between 2 or more table based on common 
column between them

-- joins are mainly divided into 2 types
-- Inner Join and Outer Join  
-- outer join - 3 types
-- Left outer join or left join
-- Right outer join or Right join
-- Full outer join or Full join
                
 -- Natural joins , self join and cross join
 
 -- 1 .Inner Join - common part between the tables based on the common column
 */
 use mavenmovies;
 
 use practise_sql;
 create table customer(cid int,cname varchar(10));
 insert into customer
 values(1,'A'),(2,'B'),(3,'C'),(4,'D');
 select * from customer;
 
 create table c_age(cid int,age int);
 insert into c_age 
 values(1,20),(2,22),(3,30),(5,26);
 
 select * from c_age;
 
 -- inner join 
 -- It returns only the records which have matching values between 
 -- the 2 tables based on the common column
 
 /*-- syntax -
  select * from table1
  inner join table2
  on table1.commoncol=table2.commoncol
  */
  
 select * from customer 
 inner join c_age
 on customer.cid=c_age.cid ;
 
 /*
 # left join - It returns all the data from the left table and matching values
   from the right table and for non matching values it returns null
   */
   
   -- syntax - select * from table1 left join table2 on table1.colname=table2.colnam2;
   select * from customer
   left join c_age
   on customer.cid=c_age.cid;
 
 /*
 # Right join
 -- It returns all the data from the right table and matching values 
   from the  left table and for non matching values it returns null.
   
   -- syntax -- select * from table1
				right join table2
                on table1.colname=table2.colname;
*/

-- right join
select * from customer
right join c_age
on customer.cid=C_age.cid;

/*
# Full join - It displays complete data from 2 tables
-- full join= left join+right join
-- In mysql we cannot perform full join
-- but if we want to perform we need to use union
                
-- syntax
 select * from table1
 left join table2
 on table1.colname=tabe2.colname
 union
select * from table1
 right join table2
 on table1.colname=tabe2.colname            
 */
 
 select * from customer
 left join c_age
 on customer.cid=c_age.cid
 union
 select * from customer
 right join c_age
 on customer.cid=c_age.cid;
 
 /*---------Two column to one column-------------*/
 /*
 # Ambegious Error
 -- Whenever we are performing joins,there will be common columns  
 -- so to display the common column sql will get confused from
 -- which table common column should be used
 -- so it throws ambigious error to void that error we need to 
 -- specify table name or alias name before common column name 
 -- in select command
 */
 
 
 select customer.cid,cname,age from customer
 inner join c_age
 on customer.cid=c_age.cid;
 
 -- fetch the data of customers whose age is not available
 
 select * from customer;
 select * from c_age;
 
 select c.cid,cname,age from customer as c
 left join c_age as a
 on c.cid=a.cid
 where age is null;
 
 use mavenmovies;
 
 select * from actor;
 select * from film_actor;
 
select * from actor as a
inner join film_actor as fa
on a.actor_id=fa.actor_id;

-- join 3 tables
-- actor, film_actor and film table

select * from actor;
select * from film_actor;
select * from film;

select * from actor as a
inner join film_actor as fa
on a.actor_id=fa.actor_id
inner join film as f
on fa.film_id=f.film_id;

 -- fetch the firstname and lastname of actors worked in movies statring with a
 use mavenmovies;
 select * from actor;
 select * from film;

 select first_name,last_name,title from actor as a
 inner join film_actor as fa
 on a.actor_id=fa.actor_id
 inner join film as f
 on fa.film_id = f.film_id
 where title like 'A%';
 
 -- display full name of actors for above query 
 select concat(first_name,' ',last_name) from actor;
 
 -- join customer table and payment table
 
 select * from customer;
 select * from payment;
 
 select * from customer as a
 inner join payment as p
 on a.customer_id = p.customer_id;
  
 -- fetch the total amount paid by Mary smith
 select sum(amount) from payment as p 
 inner join customer as c
 on p.customer_id=c.customer_id
 where first_name= 'Mary' and last_name='smith';
 
  use examples;
  select * from city;
  select * from country;
  
  -- display all the cities in india

select city from country as c
inner join city as ct
on c.country_id=ct.country_id
where country='India' and city like 'B%';

use example1;
select * from city;
select * from country;
select * from customer;

-- display all the customers whose name starts with A and lives in india

select first_name ,last_name  from customer as c
inner join country as cn
on c.customer_id=cn.customer_id;



