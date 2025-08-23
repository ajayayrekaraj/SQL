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

# delete 
# it is used for delete any perticular data from the table
# syntax 
#  delete from tablename where condition
use practise_sql;

delete from College 
where ColId=10;

select * from College;

/*
# difference between drop delete and truncate

drop- remove the complete table from the database

truncate - it will just remove data inside table but structure 
            of table will remain same

delete - used to delete the data whole row
            
*/

# DCL - Data Control Langauge
# Grant and revoke

# DCL commands are udes by data admins

# privilages - delete 

# Grant - Grant is used to give/ assign new privilages /permission to user

# syntax- - Grant privilage_name on objectname to user;
# EXample
Grant delete on College to practise_sql;

# privilage_name - any of the commands 
# objectname - tables,indexes,sequences - called as database objects

# Revoke - Revoke is used to takeback the privilages / permissions from user
# syntax - Revoke privilages_name on objectname from user
# ex

Revoke delete on College from practise_sql;

# TCL -Transaction Control Langauge

# Commit ,savepoint and rollback

# commit - if we want to save data permanently in database we will use commit
# Syntax- commit
 commit;
select * from College;

/*
 Whenever we perform any of the DML command like - insert,delete or update
 these can be rollback if the data is not stored permanently
  So to be on the safer side we will use commit command to save the 
  data permanently
*/

# savepoint 
 # used to save the data at any particular point 'temporarly'
 # so that whenever needed can be rollback to that particular point
 # syntax- savepoint savepoint_name
 # Ex-savepoint s1
 
 # rollback - used to restore  the data to any particular savepoint
 # syntax- Rollback to savepoint s1;
 
 /*
 suppose there is some lines of codes - after few lines we can define 
 one savepoint so that if needed we can rollback to that particular point
 
 --------
 --------
 ---------
 ---------
 ---------
 savepoint s1
 
 
 -------
 -------
 -------
 -------
 --------
 savepoint s2
 
 ------
 ------
 ------some miske--
 ------
 ------
 savepoint s3
 rollback from savepoint s3 to s2
 
 -------
 -------
 -------
 ------
 -------
 savepoint s4
 
*/

# DQL - Data Query Langauge
# select 
# syntax - select * from tablename;

