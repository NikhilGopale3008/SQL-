# Create database

CREATE DATABASE sql_analysis;
use sql_analysis;

show databases;


# Create table
CREATE TABLE  food_info(
food_id INT,
food_name varchar(100),
quantity INT 
);

alter table food_info add food_price INT;

show tables;
describe food_info;

INSERT INTO food_info(food_id,food_name,food_price,quantity)
values(1,'Apple',30,3);

INSERT INTO food_info(food_id,food_name,food_price,quantity)
values(2,'Mangos',100,6);

INSERT INTO food_info(food_id,food_name,food_price,quantity)
values(3,'Banana',40,2);

INSERT INTO food_info(food_id,food_name,food_price,quantity)
values(4,'Grapes',20,25);

INSERT INTO food_info(food_id,food_name,food_price,quantity)
values(5,'Apple',30,3);

INSERT INTO food_info(food_id,food_name,food_price,quantity)
values(6,'Mangos',200,5);



# multiply values 
select food_name,
food_price * quantity as  total_price 
from food_info;



# delete specific column
alter table food_info
drop total_price;

select * from food_info;


# Order by values
select * from food_info
order  by food_price;

# Group by
# 1) 
select count(food_id),food_name
from food_info
group by food_name;

# 2) 
select food_name, count(*) as number_of_record
from food_info
group by food_name;

# Find Null values
select * from food_info where food_price is null;





savepoint sp1;
delete from food_info where food_id = 6;
rollback to sp1;


set sql_safe_updates=0;

delete from food_info where food_id = 6;
commit;

select * from food_info;

delete from food_info where food_id = 6;
ROLLBACK ;

select * from food_info;





# joins

select * from food_info;
