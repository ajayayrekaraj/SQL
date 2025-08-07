# Date Functions

-- year,month,week, datediff

use mavenmovies;
select * from rental;

-- year - used to extract the year
select *,year(rental_date) from rental;

-- month -- used to extract the month  
select *,month(rental_date) from rental;

-- monthname 
select *,monthname(rental_date) from rental where customer_id>500;

-- how many movies are rented in the month of may
select count(rental_id) from rental
where monthname(rental_date)='May';

-- curdate - it gives current date
select curdate();

-- current_time - it gives the current time i.e system time
select current_time();

-- now() and sysdate() - extracts current date and time
select now();
select sysdate();

select curdate(),current_date(),now(),current_time();

-- datediff - used to find difference between the dates
-- differences in the sense in terms of days

select * from rental ;

-- how many days the movies are rented
select *,datediff(return_date,rental_date) from rental;

-- adddate - used to add the number of days or months to any particular date

select rental_date, adddate(rental_date,interval 10 day) from rental;
select rental_date,adddate(rental_date, interval 1 month) from rental;

select * from actor;
alter table actor
drop primary key;
use practise_sql;
select * from college;

-- we can also delete primary key in the existing database
-- syntax - alter table tablename drop primary key
alter table college 
drop primary key;

-- we can add primary key in the existing database
-- syntax - alter table tablename add primary key(colname)
alter table college
add primary key(colId);

-- syntax for displaying create table syntax
show create table college;

use mavenmovies;

use practise_Sql;
select * from employee;
insert into employee values (1,"Ajay",46000,2,5),(2,"Rahul",50000,3,2);

# Approximation method
alter table employee add DOJ date;

update employee set DOJ='2001-06-04' where emp_id=1;
update employee set DOJ='2005-07-15' where emp_id=2;

-- Exact values
-- timestamdiff() - used to extract the extract values
select timestampdiff(year,DOJ,now()) as
Experiencr_months from employee;
