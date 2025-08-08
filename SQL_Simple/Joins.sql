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
 
 
 
 