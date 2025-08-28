-- views
-- It is a way of storing a query
-- syntax of creating view
-- syntax - create view view_name as

use mavenmovies;

create view Vfilm_PG as 
select * from film
where rating = 'pG';

-- display the data of view
select * from Vfilm_pg;

-- Alter the view
alter view vfilm_pg as
select * from film
where rating = 'PG' and length>100;

-- drop the view

-- drop view view_name

drop view vfilm_pg;

-- view wont create seperate table ,it is just creating a view for the
-- existing table
-- If we add any new data in the table , that will be impacted in our views automatically

-- update and delete 
-- views are updatable
-- If we  create views normally , and if we use delete and update command
-- on views  that will impact our table
-- the views are non updatable also

-- while creating views we use distinct,aggregate function,group by clause 
use example1;

