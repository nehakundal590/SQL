-- show
show databases;
use sakila;
show tables;
select * from actor;
select actor_id,first_name from actor;

-- LETS SAY --- where is used to filter the data
select * from actor where actor_id=3;
select actor_id,first_name from actor where actor_id=3;
select first_name from actor where actor_id=3;

select * from actor_id where actor_id>2 or actor_id<7;
select * from actor_id where actor_id>2 and actor_id<7;

-- between operator are used to range of values
select * from actor where actor_id between 2 and 7;

-- in operator are used to  check specific values
select * from actor where actor_id in(2,7,9);
select * from actor where actor_id not in(2,7,9);
select * from actor where first_name in ('NICK','ED');

-- ---------- like operator=> pattern ko search krne----------
-- keyword => % (zero or more character)
-- A% => A 1,2,3,4,5

select * from actor where first_name like 'A%';
select * from actor where first_name like 'B%';
select * from actor where first_name like 'ED%';
select * from actor where first_name like '%ED%';
-- ED last character --------------------------------------
select * from actor where first_name like '%ED';
select * from actor where first_name like 'A%';

select * from actor where first_name like 'S%R';
select * from actor where first_name like 'S%R';
-- R R 
select * from actor where first_name like'%R%R%';
select * from actor where first_name like'%RR%';

-- _(ONLY 1 Character)
select * from actor where first_name like'___';
select * from actor where first_name like 'A_%';
select * from actor where first_name like '_A%';
select * from actor where first_name like'%R_';
select * from actor where first_name like'_A%R_';

-- Questions-------------------------
select * from actor where first_name like 'C%N_';
select * from actor where first_name like '%A%A%A%';
select * from actor where first_name like '%D___';
select * from actor where first_name like '%AA%';
select * from actor where first_name like '_____%';


