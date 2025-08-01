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