## REVISION
# SQL - Structured Query Langauge
# - Comment 
# SQL is case insensitive - lcase and ucase
# for activating the database - (use) keyword is used

create Database University;
use University;

# Create Table 
create table University_India
(colId int,colRegNo int primary key,colName varchar(100),
colFountYear date ,colPlacement int ,
colRank int,colDepartment varchar(100));

# Insert data
insert into university_India values
(1,"100231","SCOE",'2000-12-06',1000,10,"CI,ME,CS,IT,ECE,EE"),
(2,"100245","PCCOE",'2002-08-04',5000,5,"CI,ME,CS,IT,ECE,EE,AI"),
(3,"10045","PICT",'2005-05-15',15000,2,"CI,ME,CS,IT,ECE,EE,AI"),
(4,"10025","COEP",'1970-02-14',35000,1,"CI,ME,CS,IT,ECE,EE,AI"),
(5,"10245","MIT",'1990-05-02',10000,3,"CI,ME,CS,IT,ECE,EE,AI");

# display Data
select * from university_India;

# Primary Key - it will not allow null values & duplicate Values
-- one table have only one primary key

# Foreign Key
-- used to create the relationship between two tables
-- every foreign key acts as a primary key in another table
-- In PK column, data should be unique where as in FK col data can be repeated
use university;
create table course
(cid int primary key,cname varchar(100),duration int);

insert into course values(1,'SQL',30),(2,'POWERBI',40),(3,'Python',100);

select * from course;

create table students (sid int primary key , sname varchar(100),courseid int,
foreign key (courseid) references course(cid));

insert into students values (1101,'AJAY',1),(1123,'Rahul',3),(1134,'Ankit',3);

 select * from students;
 
 # SQL Commands
 -- DDL -data defination langauge
 -- DDL commands helps us to create design of the table
 -- Create,Drop,Alter,Truncate,Rename
 
 -- create - to create any table
 -- Drop - to remove entire table
 
 select * from university_India;
 
 create table asach(aname varchar(100));
  drop table asach;
  
-- Alter - 1 . to add new column in existing table
select * from university_India;
alter table university_India add Location varchar(100);

-- 2 . to remove any column from existing table

alter table university_India 
drop column location;
 
-- 3 . For changing datatypes of existing columns
alter table university_india
modify column location char(30);

-- 4 . Rename column name

alter table University_india
rename column location to ColArea;

select * from University_India;

-- Truncate 
-- it used to delete data from table but structure remains same
truncate table tablename;

-- Rename 
-- rename old table to new table name

rename table university_india to AllIndia_University;
select * from AllIndia_University;

# DML - Data Manipulation Langauge
-- insert , delete , update

-- insert
-- update 
-- we can make changes for the existing data by using update command

update AllIndia_University
set colPlacement =30000
where colId =1;

# Where Clause - Whenever We want to mention any condition we use where clause
