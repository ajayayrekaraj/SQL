# Foreign Key 

use university;

create table Lab (labId int primary key,labName varchar(100),capacity int);

insert into Lab values (1,"Laxmi Lab",100),(2,'SCOE lab',300),
(3,'Durga lab',410),(4,'Mauli lab',700);

select * from Lab;

create table Student (sid int primary key ,sname varchar(100),
studentlabId int,foreign key (studentlabId) references lab(labid)); 

insert into student values (12344,'Arjun',1),(14678,'Sachin',3);

select * from Student;