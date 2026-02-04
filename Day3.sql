
use world;
show databases;
select * from country;

SELECT name, population, region 
FROM country;

SELECT name, population, region, population - 500 
FROM country;
SELECT * FROM country;
SELECT * 
FROM country 
WHERE continent = 'Asia';
show databases;
-- create database regexdb2;
-- show databases;
-- use regexdb2;
-- show tables;
-- create table students(sid integer,name char(10));
-- show tables;

-- to use database
use sakila;
show tables;

-- explain table structure
 describe actor;
 --  select column name  from   table name  
  select* from actor;
  
  select actor_id ,first_name from actor;
  select first_name ,actor_id from actor;
 select first_name ,actor_id first_name,actor_id*10 from actor;
 -- select do not impact on original data
 -- filter condtion using where
 -- select * from table where condition in column 
 select * from actor where actor_id=3;
 select * from actor where actor_id=3;
 select * from actor where actor_id>3;
 select * from actor where actor_id!=3;
 -- (<>)
 select * from actor where first_name='NICK';
 select * from actor where first_name='A';
 select * from actor where first_name>'A';
 -- and which is a logical operator
 select * from actor where actor_id>3 and actor_id<7;
 select * from actor where actor_id=3 and actor_id=5;
 select* from actor;
 select * from actor where actor_id>3 and actor_id=5;
  select * from actor where actor_id=3 or actor_id=5;
  select * from actor where actor_id=3 or actor_id=5;
  select * from actor where actor_id=3 or actor_id=5;
  select * from actor where actor_id>3 or actor_id=5;
  select * from actor where actor_id>3 or actor_id=5;
  select * from actor where actor_id>3 or actor_id=5;
   select * from actor where actor_id>3 or actor_id=1;
   
   select * from actor where actor_id>3 or actor_id=2 or actor_id>3 and actor_id=1;
   select * from actor where actor_id>3 or actor_id=2 or actor_id>3 and actor_id=1;
   -- assignment
   
 -- Lecture 3 sql Date:1/2/2026---------------------------------------------------
 -- -----------------------------------------------------------------------------------
 -- show
 show databases;
 
 use sakila;
  show tables;
  select* from actor;
  select actor_id, first_name from actor;
  
  -- --------where is used to filter the data---------------
  select * from actor where actor_id=3;
  select actor_id first_name from actor where actor_id=3;
  select first_name from actor where actor_id=3;
  select * from actor where actor_id>2 or actor_id<7;
  
  -- ------------ between operator range of values------
  -- ---- in between lower value come first and then higher value
  select * from actor where actor_id between 2 and 7;
  --  in operator -> soecific value check karta hai-------------
  
  select * from actor where actor_id=2 or actor_id=7 or actor_id=9;
  select *from actor where actor_id in (2,7,8);
  select* from actor where first_name='NICK' or first_name='ED';
    select* from actor where first_name in ('NICK','ED');
    select *from actor where actor_id not in (2,7,8);
    
    -- --------like operator => pattern ko search karna--------
    -- keyword => %(zero or more character)
    select *from actor where actor_id in (2,7,8);
    select*from actor where first_name like 'A%';
    select*from actor where first_name like 'B%';
    -- select*from actor where first_name like 'ED%';
    select*from actor where first_name like '%A';
   -- select * from actor where first_name like '%ED';
   select * from actor where first_name like 'S%R';
   select * from actor LIMIT 10;
   select * from actor where first_name like 'B';
   select * from actor where first_name like 'S%R';
   
   -- at any place A------------------------------------
   select * from actor where first_name like '%A%';
   -- R R------------------------------------------
   select * from actor where first_name like'%A%A%';
   
   -- ----------------(_) only one character--------------
   select * from actor where first_name like'_';
   select * from actor where first_name like '___';
   select * from actor where first_name like '_A%';
   select* from  actor where first_name like '%R_';
   
   select* from  actor where first_name like '_A%R_';
   -- -------------------lecture 4------------------
  -- -----------------------------------------------------------------------------
  select name,continent ,concat(contintent,'-',code'-','regex') from country;
    

   
   
  
  
  
  
  

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 









