# Questions

# 1 . Display the count of unique categories of film
use mavenmovies;
select * from film_category;

select count(distinct (category_id)),name 
as unique_category 
from film_category;

select * from category;

# 2 . Display the names of actors and the names of the 
-- films they have acted in

select * from actor;
select * from film;
select * from film_actor;

select a.actor_id,first_name,last_name,title from film as f
inner join film_actor as fa
on f.film_id = fa.film_id
inner join actor as a
on fa.actor_id = a.actor_id;

# 3 . Display the film names and the category of the film it
-- belongs to ?

select * from film;
select * from film_category;
select * from category;

select name,title from film as f
inner join film_category as fc
on f.film_id = fc.film_id
inner join category as c
on fc.category_id = c.category_id ;

# 4 . Display all number of films in the category of action

select count(*) from film as f
inner join film_category as fc
on f.film_id = fc.film_id
inner join category as c
on fc.category_id = c.category_id 
where name='Action';

# 5 . Display the list of films,their actors where the length
-- of the film is greater than 100 minutes
 
 use mavenmovies;
 select * from film;
 select * from film_actor;
 select * from actor;
 
 select title,concat(first_name,last_name),length from film as f
 left join actor as a
 on f.film_id=a.actor_id
 where length >100;
 
# 6 . Display all the actors names who worked  
-- in either Animation or Children Movies

select * from actor;
select * from film_actor;
 select * from film;
 select * from category;
 
select concat(first_name,'  ',last_name) as actor_names,name from actor as a
inner join film_actor as fa
on a.actor_id=fa.actor_id
inner join film_category as fc
on fa.film_id=fc.film_id
inner join category as c
on fc.category_id=c.category_id
where name = 'Animation' OR 'Children';
 