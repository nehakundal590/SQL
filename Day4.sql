use sakila;
-- function 
-- block of code => code reusabble and readable
-- pre-defined and user defined
-- pre-defined=> scaler function
-- scaler=>applied for each row and result will be given for each row
-- String (character),numbers,data related function

----  String related function (today at 3rd feb)-- -------------------------------------
select first_name, lower(first_name),last_name,upper(last_name) from actor;
-- --------------concat => combine two string or values -- -------------------------------
-- concat "hey"+"hello" concat("hey","hello")

select first_name,last_name,concat("Mr",'-'+first_name,' ','regex'+ last_name) from actor;
select first_name,last_name,concat(first_name,' ', last_name) from actor;
-- ---- extract me all the data first_name+last_name='EDCHASE'---------------------------
select* from actor;
-- combine where concat(col1,col2)='EDCHASE'
select * from actor where concat(first_name,last_name)='EDCHASE';
select * , concat( first_name,last_name) from actor where concat(first_name,last_name) like '%A';
select * , concat( first_name,last_name) from actor where concat(first_name,last_name) like '%A%A%';
select first_name,last_name,concat(first_name,last_name) ,
concat_ws('-',first_name,last_name) from actor;

--------- substring -- ---------------------------------------------------
-- =>extreact kuch portion ko(extract  data basis of position )
select first_name,last_name,substr(last_name,5) from actor;
select first_name,last_name,substr(last_name,-3) from actor;
select first_name,last_name,substr(last_name,1,4) from actor;
select first_name,last_name,substr(last_name,2,4) from actor;
select first_name,last_name,substr(last_name,-3,2) from actor;

select * from actor;
select first_name like 'A%' or first_name like'E%';
select * ,substr(first_name,1,1) or substr(first_name ,1,1)='A';

select first_name like 'A%' or first_name like'E%';
select * ,substr(first_name,1,1) in('A','E');

select first_name,replace(first_name,'A','') from actor;

