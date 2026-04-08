-- ================================= String and number function==============================================

use sakila;

select first_name,concat('Mr',first_name),substr(first_name,-2) from actor;
select first_name,concat('Mr',first_name,-2),substr(first_name,4,1) from actor;

-- --------------------------------------trim ---------------------------------------
-- trim(select value),<= only for testing purpose
-- trim are used to remove spaces from starting or endimg point
select 100;
select 'neha';
select char_length('neha  ');
select char_length(trim('neha  '));
select char_length(trim(    'neha'));
select char_length(trim('ne    ha'));

select trim( both'a'from'aaaaaanaman');
select replace('aaaaaanaman','a','');
-- ltrim reove only spaces 
select first_name ,trim(both 'E' from first_name) from actor;

-- lpad/rpad/(left padding/right padding)
select lpad('10234',6,'@');
-- concat substring ,lpad,rpad
-- ======================================================================
-- Number funtion =>round values
select 14.68,round(14.68);
select 23.68,round(23.68);
select 23.68,round(23.68,1);
select 23.68,round(23.68),round(23.48,1);
select 23.68,round(23.68),round(23.654,2);
select 23.68,round(3.68,-1);
-- truncate extract the values without doung any round off
select round(14.685,2),truncate(14.685,2);
select floor(6.9999999),ceil(6.0000000);
select distinct(amount) from payment;

-- count( distinct ()) are used to find unique values-------------------------
select count(first_name) from actor;
select count(distinct(first_name) )from actor;



