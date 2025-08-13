# Denormalization
/*
Denormalization - If we store all the related data in one single table ,
 it is a denormalized data
 
 -- Disadvantages - Data Redundancy , Memory wastage , Performance
 
 -- Anomalies - problems
 if we store data in denormalized form we have 3 anomalies
 1. Insertiom Anomaly
 2. Deletion Anomaly
 3. Updation Anomaly
 
 We have only one advantage in denormalization i.e accessing the data 
is easy No need of joins,Unions,sub queries
 # Normalization
 /*
 --if the data is divided into smaller chunks of pieces so that we can
 handle data easily
-- if we divide one large table into smaller different tables
-- we should make sure there should common column between tables


-- levels of Normalizations
-- for any denormalized data , if we want to convert it to normalized
-- form we need to follow certain rules 
-- levels of normalizations is also called as Normal forms

-- 1st level of Normalisation - 1NF
1NF
2NF
3NF
BCNF
4NF
5NF

1NF - first Normal form
1. Every column must have one single value
2. Each row must be unique and not mandate to have a primary key

*/