create    database  sales;
use sales;

create table sales_data 
( cust_id INT ,
cust_name varchar(30),
cust_contact bigint,
cust_location varchar(30) ,
order_date date
);

insert into sales_data (cust_id , cust_name , cust_contact, cust_location, order_date)
values(101,'Nikhil' ,9326780920 , 'thane', '2021-10-20');

insert into sales_data (cust_id , cust_name , cust_contact, cust_location,order_date)
values(102,'rahul' ,9426780920 , 'mumbai','2022-01-12');


insert into sales_data (cust_id , cust_name , cust_contact, cust_location,order_date)
values(103,'Nikhil' ,9326780920 , 'thane', '2020-06-24');

insert into sales_data (cust_id , cust_name , cust_contact, cust_location,order_date)
values(104,'PH' ,8826780920 , 'pune','2021-09-01');

insert into sales_data (cust_id , cust_name , cust_contact, cust_location, order_date)
values(105,'rahul' ,9426780920 , 'thane','2022-02-12');

insert into sales_data (cust_id , cust_name , cust_contact, cust_location,order_date)
values(106,'Nikhil' ,9326780920 , 'thane','2022-06-30');

insert into sales_data (cust_id , cust_name , cust_contact, cust_location,order_date)
values(107,'ketan' ,7726780920 , 'thane','2019-12-01');

insert into sales_data (cust_id , cust_name , cust_contact, cust_location,order_date)
values(108,'Nikhil' ,9326780920 , 'thane','2021-11-08');

insert into sales_data (cust_id , cust_name , cust_contact, cust_location,order_date)
values(109,'Nikhil' ,9326780920 , 'thane','2022-02-10');

insert into sales_data (cust_id , cust_name , cust_contact, cust_location,order_date)
values(110,'Nikhil' ,9326780920 , 'thane','2022-02-12');

insert into sales_data (cust_id , cust_name , cust_contact, cust_location,order_date)
values(111,'Nikhil' ,9326780920 , 'thane','2022-02-13');



select * from sales_data;

select cust_name, count(*) as occurance from sales_data 
group by cust_name  having count(*)>1;

select cust_contact, count(*) as occurance from sales_data 
group by cust_contact  having count(*)>1;


select cust_name, count(*) as occurance , cust_contact, cust_location
from sales_data
where order_date between '2021-08-01' and '2022-02-12' 
group by cust_name having count(*)>1 ;


select cust_contact, count(*) as occurance , cust_name, cust_location
from sales_data
where order_date between '2021-08-01' and '2022-02-12' 
group by cust_contact having count(*)>1;


select cust_contact, count(*) as occurance , cust_name, cust_location
from sales_data
where order_date between '2021-08-01' and '2022-02-12' 
group by cust_contact 
 having (count(*)>=1);

select * from cococart_all_contact_list_nonmum_main;

select `Name`, count(*) as occurance , `Phone Number`, `City`
from cococart_all_contact_list_nonmum_main
group by `Name` having (count(*)>1) ;


select `Phone Number`, count(*) as occurance , `Name`, `City`
from cococart_all_contact_list_nonmum_main
group by `Phone Number` having (count(*)>1) ;



select `Cleaned Contact`, count(*) as occurance , `Ship-to Name`, `Location`
from cococart_list_all
group by `Cleaned Contact` having (count(*)>=3) ;


