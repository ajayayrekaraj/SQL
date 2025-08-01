#SQL Commands

use practise_sql;
# DDL- data defination langauge

create table EMP(emp_id int primary key,
Emp_name varchar(40),emp_sal float);

insert into EMP values(1,"Ajay",40000.00);

select *  from EMP;

drop table EMP;

# Alter
# to add a new column in existing table
# syntax- alter table tablename add column name datatype(size)

alter table Emp add YOJ date;

# to remove column from table 
# syntax- alter table table name drop column

alter table EMP drop YOJ;
select * from EMP;
# for changing datatypes of exisisting column 
# syntax-
