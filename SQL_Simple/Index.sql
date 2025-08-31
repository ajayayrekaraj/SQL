# Index
-- Index is somelike a reference
-- indexes are created on tables
-- Types of indexes - 2 types
-- Clustered index, Non-Clustered index

-- cluster index - it is defined automatically when we define a
-- primary key on any column of a table
-- We have only 1 PK for every table
-- We will have only 1 clustered index for every table

-- Non clustered Index 
-- If i want to create index for any other remaining columns than PK,
-- we create non-cluster index

-- create a index

/* create index index_name
   on tablename(colname);
   */
   use practise_sql;
   select * from set1;
   
   create index ix_ename
   on set1(student_name);
   
   -- another way to creating index
   
   /*
   alter table tbname
   add index indexname(colname)
   */
select * from set2;
alter table set2
add index ix_SRN(student_rollno);

select * from set2;
   
alter table set2
drop index ix_SRN;   