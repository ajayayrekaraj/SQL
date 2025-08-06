# Date Functions

-- year,month,week, datediff

use mavenmovies;
select * from rental;

-- year - used to extract the year
select *,year(rental_date) from rental;

-- month -- used to extract the month  
select *,month(rental_date) from rental;

-- monthname 
select *,monthname(rental_date) from rental where customer_id>500;

-- how many movies are rented in the month of may
select count(rental_id) from rental
where monthname(rental_date)='May';