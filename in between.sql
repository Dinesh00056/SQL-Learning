use sakila;
show tables;
select * from city;
-- where clause  is  used to filter the  data
select * from city where city= 'abu dhabi';
select * from city where country_id>101;
select country_id from city  where country_id>102;
   -- Not equal too
 -- <>  !=  ---- this signs are showing not equal to option
 
 select * from city where city <> 'abu dhabi';
 
 -- in operators
   -- in operators is used to filter data in the  specific set of value 
 select * from city where city in ('Jhansi','Nyeri','arak');
 
 -- between  < range of value>
 
 select * from city where country_id between 87 and 97;
select * from city where city between 'abu dhabi'and 'kilis';
 
 
 -- get the code the country name and the region where region is not middleeast
--  get the name independence year and population with the 10% inncrease in polulation 
--  get all the columns from the country where the live expenty is from 38.3 and 66.4
--  get the name continent population and gnp columns from rhe table where the population is not from 5thousnad to 2lakh
  select * from country;
 select country,region from the city where region not in middleeast
 slect name independent year population* 1.10% as population from city
 select * from ciity where life expectation in 38.3,66.4
 slect name continent poupulation gdp from city where population not between 5000 and 200000   
 
 -- like operator --- to  search pattern