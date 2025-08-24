# SQL - Structured Query Langauge
# - Comment 
# SQL is case insensitive - lcase and ucase
# for activating the database - (use) keyword is used

create Database Practise_SQL;
use Practise_SQL;

create table Set1(
Student_RollNo int,
Student_Name varchar(100),
S_DOB date,
State varchar(100));

insert into Set1 
values (1,'Ajay Ayrekar','2001-12-06','Maharashtra'),
(2,'Sachin Maske','2001-06-12','Maharashtra');

select * from Set1;
select Student_RollNo,S_DOB from Set1;

create table Set2(
Student_RollNo int primary key,
Student_Name varchar(100),
S_DOB date,
State varchar(100));

insert into Set2
values (1,'Ajay Ayrekar','2001-12-06','Maharashtra'),
(2,'Sachin Maske','2001-06-12','Maharashtra');

select * from Set2;
insert into Set2
values (3,'RJ','2003-06-12','KA'),('rahul',4,'2004-06-12',253);

insert into Set2
values ('rahul',4,'2004-06-12',253);

create table coursedetails(cid int primary key,cname varchar(10),duration int);
insert into coursedetails
values(1,'sql',30),
(2,'tableau',45),
(3,'PowerBI',60);

select * from coursedetails;

create table students(sid int primary key,
sname varchar(40),courseid int,
foreign key (courseid)references coursedetails(cid));

insert into students 
values (1101,'Ajay',1),(1102,'Rahul',2),(1103,'Dipak',1);

select * from students;
select * from coursedetails; 