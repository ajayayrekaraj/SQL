use mavenmovies;

select * from film;

select * from film 
where rating='G';

select * from film where length>150;

# Operators and Clauses
-- fetch the data of movies having length between 100 to 150

select * from film where length between 100 and 150;

# we are using between,and - operators

-- fetch the data of movies having length>100 and rating G

select * from film where length>100 and rating='G';

-- AND operator - Whenever we use AND operator both the conditions should be true

/* fetch the data of movies having length>100 and rating is G
   and only display film_id,rating and length
*/

select film_id,length,rating 
from film 
where length>100 and rating='G';

-- OR operator
-- any one condition is true

-- fetch the data of movies having length>100 and rating G

select * from film where length>100 or rating='G';

-- order by clause
-- used to sort the data in ascending or decending order
-- by default it will sort in asc

-- fetch the details of film based on length in asc order

select * from film order by length;

-- fetch the details of film based on length in dec order

select * from film order by length desc ;

select * from payment;

select * from payment order by amount desc;

select * from payment order by staff_id ;

-- fetch the data from the payment table sorted by amount in desc order
-- but i want only details of staff_id is 1

-- whenever we use where clause & order by clause together . 
-- 1st we need to use where clause only .then we only need to use order by clause

select * from payment 
where staff_id=1
order by amount desc;

-- we can sort the data in multiple levels as well .. ie multiple columns
select * from payment 
where staff_id=1
order by customer_id desc,amount desc;

/*
 select 
 where 
 order by
 -- we should follow this order only
 */
 
 -- 
 
 use practise_sql;
 
 select * from Students;
 select * from set1;
 
 select * from Students;
 
 -- if we want to add PK in the existing table we use alter command
 alter table set1
 add primary key(Student_RollNO);
 
 select * from set1 where student_RollNo=2;
 delete from set1 where student_rollNo=1;
 
 insert into Set1 values
 (1,"Ajay",'2001-06-12',"MH"),
 (2,"Sachin",'2001-06-10',"MH");
 
 -- syntax - alter table tablename add primary key (Column name)
 use mavenmovies;
 select * from payment;
 select * from payment where customer_id= 5 or customer_id= 6;
 
 -- where clause will work at row level data
 -- row level in the sense it will check the conditions for each row
 
select * from payment where customer_id between 5 and 8;

select * from film where rating='G' or rating='pg' or rating='nc-17';

-- in operator
select * from film where rating in ('g','pg','nc-17');

-- in - used to retrive the data that matches a list of values

-- Range operator - between - used to retrive the data within a specified range of values
-- Membership operator - IN - used to retrieve the data that matches a list of values
