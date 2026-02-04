-- trim  are used to remove space------(select value),<= only for test porpose
 -- reomove starting space or end space
 select 100;
 select char_length('neha ');
 select char_length( trim('neha  '));
 select char_length(trim('    neha'));
 -- trim do not remove the middkle space
 select char_length(trim('ne    ha')); 
 
 select trim('ne  ha');
 -- replace remove all starting ending and middle space
 -- trim will remove character a from the value
 select trim(both'a' from 'aaanaman');
 select replace( 'aaanaman','a','');
 -- apply on a column
-- select first_name, trim( both 'E' from first_name) from actor;

-- --------------------------------------------------------------------------------
-- lpad/ rpad (left padding/ right padding)
 select lpad ('10294',6,'@');
 -- concat ,substr,trim,lpad,char_length ----------------------------------
 -- Number function => round
 select 14.68, round(14.68);
 select 25.68, round(25.68);
select 23.68, round(23.68),round(23.654,2);
select 23.68, round(23.68,-1);
select 23.68, round(4.68,-1);
select 23.68, round(23.68,-1);
select 23.68, round(47.68,-2);
select 23.68, round(157.68,-2);
select 23.68, round(127.68,-2);
-- truncate value extract krte H
select round (14.685,2), truncate(14.685,2);
-- floor means given lower value , ceil given upper value
select floor (5.99999), ceil(6.000000000);

-- distinct remove dupliacte values
select amount from payment;
select  distinct(amount) from payment;
select count(first_name) from actor;
select count(distinct(first_name))from actor;

-- CONCAT_WS
-- Name , code aur extra text ko jodt

-- =========================
-- Lecture 03 : String Functions
-- Database : world
-- =========================

-- world database use kar rahe hain
use world;

-- ---------------------------------
--  & CONCAT_WS
-- Name, code aur extra text ko jodta hai
select name,
       code,
       CONCAT(name, '$', code, 'rahul'),
       CONCAT_WS('$', name, code, 'rahul')
from country;


-- Name + space + code agar 'Afghanistan AFG' ho
select name, code, CONCAT(name, ' ', code)
from country
where concat(name, ' ', code) = 'Afghanistan AFG';

-- country table ka pura data
select * FROM country;

-- Region ke andar continent ka naam present ho
-- Example: 'North Europe' me 'Europe'
select *
from country
where region like concat('%', continent, '%');

-- Name, region aur continent jahan region me continent ho
select name, region, continent
from country
where region like concat('%', continent, '%');

-- Jahan country ka name aur region same ho
select *
from country
where name = region;


-- Country name ka first letter
select name, left(name, 1)
from country;

-- ---------------------------------
-- CONCAT_WS ka example (- separator)
select name, concat_ws('-', name, code)
from country;

-- SUBSTRING : pura naam position 1 se
select name, substring(name, 1)
from country;

-- SUBSTRING & SUBSTR
-- 2nd character se pura naam
-- 2nd character se 4 characters
select name,
       substr(name, 2),
       substr(name, 2, 4)
from country;

-- Negative index use karke
-- Last se 4th character se 2 characters
select name,
       substr(name, 2),
       substr(name, -4, 2)
from country;

-- LEFT function (first character)
select name, LEFT(name, 1)
from country;


-- Name, continent aur name ka first letter
select name, continent, substr(name, 1, 1)
from country;

-- Jinke naam 'Alg' se start hote hain
select name, population
from country
where substr(name, 1, 3) = 'Alg';

-- ---------------------------------
-- INSTR : character kis position par hai
select name, instr(name, 'e')
from country;

select name, instr(name, 'a')
from country;


-- CHAR_LENGTH : naam ki length
select name, char_length(name)
from country;

-- Extra spaces wali string
select '    rahul   ';
select char_length('    rahul   ');

-- TRIM, LTRIM, RTRIM : spaces remove karna
select TRIM('    rahul   ');
select char_length(trim('    rahul   '));
select char_length(rtrim('    rahul   '));
select char_length(ltrim('    rahul   '));

-- Specific character remove karna (both sides)
select trim(both 'z' from '    rahuzz lllzzzz');

select name, TRIM(both 'A' from name)
from country;

-- LPAD & RPAD
-- Fixed size column banane ke liye

-- Right side padding with #
select name, population, rpad(population, 9, '#')
from country;

-- Right side padding with 0
select name, population, rpad(population, 9, '0')
from country;

-- Left side padding with 0
select name, population, lpad(population, 9, '0')
FROM country;

-- LIKE operator examples

-- Name starts with 'A'
select *
from country
where name like 'A%';

-- Name ka 2nd letter 'u' ho aur length 3+ ho
select *
from country
where name like '_u_%';
   
  
  
  
  
  

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 









