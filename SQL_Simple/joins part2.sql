# joins -part - 2

# Natural join , cross join and self join

/* # Natural join
-- if there is common column between two tables it will create a join
-- between them
-- It displays common betwwen them just like inner join 
-- But common column will be identified by sql itself in output it displays
-- common colname only once 
*/
use practise_sql;
select * from college;
select * from customer 
natural join c_age;

-- Cross Join - Cartesian product
-- It will combine each row with all the rows in other table

use practise_sql;
select * from customer;
select * from c_age;

select * from customer
cross join c_age;

# self join
-- if Any table is creating the join with itself

create table emp(ID int,ename varchar(10),manager_id int);

insert into emp 
values (1,'A',2),(2,'B',1),(3,'C',3),(4,'C',4),(5,'C',5);

select * from EMP;

select * from emp as e
join emp as m
on e.manager_id=m.ID;
