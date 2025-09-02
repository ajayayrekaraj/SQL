-- stored Procedures
-- store procedure in SQL is a group of SQl statement that are
-- stored together and reused

use mavenmovies;

delimiter $$
create procedure sp_rating_transaction()
begin
select * from film where rating = 'PG';
select * from payment where amount > 5;
end
$$

call sp_rating_transaction();

-- we can write procedures in dyanamic way

delimiter $$
create procedure sp_rating_transaction_D(in rate varchar(10),in amt int)
begin
select * from film where rating = rate;
select * from payment where amount > amt;
end
$$

call sp_rating_transaction_D('G',6);
call mavenmovies.sp_rating_transaction_D('PK', 8);

-- create a procedure to display cities name of any country

delimiter //
create procedure sp_cityofcountry(in cntry varchar(40))
begin
select city from city as c
inner join country as cn
on c.country_id=cn.country_id
where country=cntry ;
end
//

call sp_cityofcountry('India');

delimiter //
create procedure sp_citycount(in cntry varchar(40),out cnt int)
begin
select count(city) into cnt from city as c
inner join country as cn
on c.country_id=cn.country_id
where country=cntry ;
end
//

call sp_citycount('India',@cnt);
select @cnt;