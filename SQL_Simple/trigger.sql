# trigger

use practise_sql;

create table student(
name varchar(13),
sem1 float,
sem2 float,
sem3 float,
avg float
);

delimiter $$
create trigger avg_marks
before insert
on student
for each row
begin
    set new.avg=(new.sem1+new.sem2+new.sem3)/3;
end
$$

insert into student values('A',80,70,60,0);

select * from student;

alter table student add id int;

update student set id=1;




