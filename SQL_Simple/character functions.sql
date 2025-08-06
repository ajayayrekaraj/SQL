
#character functions or string functions

-- the functions which we will work on character data is called as string functions

-- left,right,length,lowercase,uppercase,mid,substr,concat,trim- ltrim,rtrim,find

-- left - it extracts the number of characters from left side

 select * from customer;
 select first_name , left(first_name,2) from customer;
 
 -- right 
 select first_name , right(first_name,2) from customer;
 
 -- length
 -- displays number of characters in the string
 
 select *, length(first_name) as length from customer;
 select *, length(email) as mail from customer;
 
 -- concat - combine together
 
 select * from customer;
 select concat(first_name,last_name) as Full_Name from customer;
 select concat(first_name,'  ',last_name) as Full_Name from customer;
 
 -- lowercase - lcase
 select lcase(first_name) from customer;
 
 -- uppercase - ucase
 select ucase(first_name) from customer;
 
 -- locate - used to find the position of the character
 
 select * ,locate('@',email) from customer;
 
 -- mid - it will extracts a sub string from the string (starting from any position)
 
 select first_name, mid(first_name,3,2) from customer;
 
 /*
 we use 3 parameters -
 -- 1st parameter is the column name or any word from where we want to extract
 -- 2nd parameter will be starting position from where we want to extract
 -- 3rd parameter will be the number of characters we want to extract
 */
 
 /*
 -- locate and find functions are same
 -- mid and substr functions are same
 */
 
 -- substr - it extracts substring from string
 
 select substr("Ajay Ayrekar",5,4);
 select substr("Ajay Ayrekar",5,4);
 
 -- trim - remove leading and trailing spaces from string
 -- i.e left and right spaces
 
 select trim("    this is example  ");
 
 -- ltrim - remove leading space from string
 
 select ltrim ("    this is good      ");
 
 -- rtrim - remove trailing space from string
 select rtrim ("     this is good      ");
 
 