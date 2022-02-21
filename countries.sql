create table countries(
country_id int,
country_name varchar(255),
continent varchar(255),
population int);

insert into countries(country_id, country_name,continent,population)
values(1,'India','Asia',12000000);

insert into countries(country_id, country_name,continent,population)
values(2,'Somalia','Africa',1400000);

Select  *  from countries;


select population from countries;

set sql_safe_updates=0;

update countries
set country_name ='kenya'
where country_id=2;

Select  *  from countries;

delete from countries;

drop table countries;

