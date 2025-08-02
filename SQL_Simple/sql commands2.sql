# SQL commands 

# 2. DML - data manipulation langauge
#  Insert,update,delete

use practise_sql;

create table  College(
colId int primary key,
FOY date,
colName varchar(100),
ColRank int,
placement varchar(20));

select * from College;

# insert 
# insert is used to insert data in table
# syntax- insert into table tablename values(column name datatype(size),...,)

insert into College values
(10,"1970-06-12","Sinhgad College Of Engineering",12,"20% placed"),
(22,'1990-05-2',"Pimpari Chinchvad College Of Engineering",5,'75% placed');

select * from College;
# select is for display data

# update 
# we can make changes for the existing data by using update command

update College set ColRank=3 where ColId=22;

# where Clause
# Whenever we want mention any conditions we use where clause

update College set ColRank=2-1 where colId;

alter table College add Students int;

update College set Students=100 where colId;





