# Operators & Clauses

# We are using between , and - operators
# OR Operator

use mavenmovies;
select * from film;

select film_id,length,rating from film
where length>100 or rating='G';

-- order by - sort data by ascending order and descending order
-- asc ,desc

-- Range operator - between
-- Membership operator - In

-- Like Operator
-- % and _
-- % - any number of characters
-- _ - Single character
-- a% -starting
-- %a - ending

-- limit 

-- distinct clause - used to display unique values
