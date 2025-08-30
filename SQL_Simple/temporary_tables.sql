-- Temporary tables
-- we will create any table temporarely
-- temporary tables will be exists till the session is opened
-- once i close the workbench temporary table will be removed automatically

use  practise_sql;
create temporary table sample(ID int,sname varchar(10));
insert into sample
values (1,'s1'),(2,'s2');

select * from sample;

-- To remove duplicate values from any table

-- step 1 . create temporary table and store unique values of employees table
create temporary table temp_emp as
select distinct * from employee;
select * from temp_emp;

-- step 2 - use truncate/delete - remove complete data from employee
truncate table employee;

select * from employee;

-- step 3 - insert unique data which we stored in temp table inside employees
insert into employee
select * from temp_emp;

select * from employee;
