-- Like Operator - used to find pattern of the data
-- we have 2 wildcards in like
-- % and _
-- % - means any number of characters
-- _(underscore) - means only single character

use mavenmovies;
select * from customer;

-- fetch the data of the customers having firstname starting with m

-- starting M%
select * from customer
where first_name like 'm%';

-- fetch the data of the customers having firstname starting and ending with m

-- starting and ending %M%
select * from customer
where first_name like '%m%';

-- %M ending
select * from customer
where first_name like '%m';