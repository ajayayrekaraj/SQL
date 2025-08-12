
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
 
 -- fetch the movie names which has AT in it
 
 select * from film
 where title like '%AT%';
 
 -- whatever i write inside ' ' - quotes , it displays that together
 
 select title from film
 where title regexp 'AT';
 
 -- pipe(|) , pipe is used as OR operator
 
 -- fetch the titles with AT or ES in it
 
 select title from film
 where title regexp 'AT|ES'; 
 
-- [] - we can write multiple characters in it
-- if we write any data inside [] , i.e we are searing for 
-- any of the data present inside []
-- same as in operator 

-- fetch the movie names having any of the vowels -aeiou

select title from film
where title regexp '[aeiou]';

-- select the movie names starting with the vowels

select title from film
where title regexp '^[aeiou]';

-- fetch the movie names ending with the vowels
use mavenmovies;
select title from film 
where title regexp '[aeiou]$';

-- fetch the movie names not ending with the vowels

select title from film
where title not regexp '[aeiou]$';

-- fetch the movie name which contains S anywhere followed by vowels

select title from film
where title regexp 'S[aeiou]$';

-- fetch the movie name starting with S  followed by vowels

select title from film
where title regexp '^S[aeiou]';

-- fetch the movie names staring with a,b,c,d,e,f,g,h ie a-z
select title from film
where title regexp '^[a-h]';

-- -- fetch the movie names staring with a,b,c,d,e,f,g,h ie a-z
use mavenmovies;
select title from film
where title regexp '^[a-z]'; 

-- fetch the movie names starting with a and ending with h
select title from film
where title regexp '^a.*h$';

-- in regexp .* indicates can have any number of characters just like % in like

-- fetch the movie names starting with and ending with the vowels

select title from film
where title regexp '^[aeiou].*[aeiou]$';

select * from film;

-- fetch the description of movies that has word drama on it

select title,description from film
where description regexp 'drama';
