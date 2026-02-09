use world;
select * from country;
select name , continent,population from country;

select sum(population ) from country;
select sum(population) from country where continent ='Asia';
select continent ,sum(population) from country group by continent;

select * from  country;
select region,sum(population) from country group by continent;
select * from country;
select  continent,region,sum(population) from country group by continent,region;
-- in every continent what country;
select continent ,count(name) from country group by continent;
select* from country;
-- har sal kitni country indepeend hoti h
select indepyear,count(name) from country group by indepyear;
--  findout how many country got independent for each year in each continent
select  continent,Indepyear, count(name) from country group by continent,Indepyear;
-- continent name atleast 30 country
select continent ,count(name)as totalCountry from country 
 group by continent  having totalCountry>30  ;
 -- where always use group by se phle use hoge
 -- where clause always filter that exist in table
 -- where clause executed first
 -- where clause generally are not used on aggregate function
 -- Having clause --- is used to filter the rows based on aggregate function ex count(name)
 -- having clause without group by not used
 -- having always used after groupby
 -- difference b/w having and group by
 
 -- you need to find thhe continent name and  average population only for those continent where the average 
 -- average population is greater than 0.5 million. 5 lakh
 
  -- select continent ,avg(population)  from country group by continent having avgpopulation>5000;
 -- get me the average popultion,total number of country is for each government form only for the country got independent after 
 -- 1890 and have atleast 4 country 
 select  Governmentform,avg(population)  as avgpopulation ,count(name) as totalcountry from country where IndepYear>1890 group by 
 GovernmentForm having count(name)>=4;[
 
 
 