
# Regular Expressions - used for pattern matching

-- regexp - keyword used Regular expressions

/*
similar to LIKE operator
wildcards - % , _
M_M -MOM
M% - starting with M and we can have any number of
 Characters after M
 */
 
 -- we have anchors here
 -- hover - ^ - starts with
 -- Dollar - $ - ends with
 
 use mavenmovies;
 -- fetch the movie name starting with  
 select * from film;
-- by using like operator 
 select * from film 
 where title like 'M%';
 -- by using regexp
 select * from film 
 where title regexp '^M';
 
 -- fetch the movie names ending with M
 select title from film
 where title regexp 'M$';
 
 select title from film
 where title like '%M';