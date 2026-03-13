-- ===== Topic: Groupby having

-- data physically store using where------------------having using aggregate functions

use world;
select * from country;
select name,continent,population from country;
select name,continent,population from country;
select sum(population )from country;
select sum(population) from country where continent='Asia';
select continent ,sum(population) from country group by continent;
select * from country;
select region,sum(population) from country group by region;
select * from country;
select continent region,sum(population) from country group by continent,region;
select continent ,count(name) from country group by continent;

-- Q1; find out country got independent before each year in each continent;
-- where always use before group by
-- where class not used on aggregate function
select continent ,count(name)as totalCountry from country where totalCountry>30 group by continent;
select governmentfrom,avg(population),count(name) from country where indyear>1890 group by governmentform having
count(name)>=4;

 