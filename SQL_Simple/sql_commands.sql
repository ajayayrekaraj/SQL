#SQL Commands

use practise_sql;
# DDL- data defination langauge

create table EMP(emp_id int primary key,
Emp_name varchar(40),emp_sal float);

insert into EMP values(1,"Ajay",40000.00);

select *  from EMP;

drop table EMP;

# Alter
#1. to add a new column in existing table
# syntax- alter table tablename add column name datatype(size)

alter table Emp add YOJ date;
alter table Emp add Experience char(20);

#2.to remove column from table 
# syntax- alter table table name drop column

use practise_sql;
alter table EMP drop YOJ;
select * from EMP;

#3. for changing datatypes of exisisting column 
# syntax- alter table tablename modify column columnname datatype(size)

alter table EMP modify Experience varchar(200);
alter table Emp modify experience int;
alter table Emp modify column experience varchar(20);

# 4. Rename column name
# syntax- alter table tablaname
# rename oldname to newname

alter table EMp rename column experience to years_of_Experience;

# Truncate:
# -used to delete complete data from table but structure remains same

# syntax-
#  - truncate table tablename

truncate table Emp;
select * from Emp;

# rename:
# Rename old table name to new table name
# syntax- rename table tablename to new tablename

rename table Emp to Employee;
select * from Employee;



