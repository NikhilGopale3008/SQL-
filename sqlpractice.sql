create  database nikgo;
use nikgo;
drop database nikgo;
show databases;

create table student_table(
student_id INT ,
student_name varchar(100),
course_name varchar(40)
);
show tables;

describe student_table; 

alter table student_table add email varchar(100);

 insert into student_table(student_id,student_name,course_name,email)
 values(1,'nikhil','cs','nikgopale4@gmail.com');
 
 insert into student_table(student_id,student_name,course_name,email)
 values(2,'rahul','com','rahul2@gmail.com');
 
 insert into student_table(student_id,student_name,course_name,email)
 values(3,'prashant','eng','prahant3@gmail.com');
 
  insert into student_table(student_id,student_name,course_name,email)
 values(4,'ketan','dip','rahul4@gmail.com');
 
select * from student_table;

truncate table student_table;     # remove all recordes

#  AND , OR , NOT Operator

select * from student_table where course_name="cs";

select * from student_table where student_id=1 and course_name="cs";

select * from student_table where student_id=5 or course_name="cs";

select * from student_table where not  course_name="cs";


 #    IN , BETWEEN Operator
 
select * from student_table where course_name in ('cs','com');
 
 select * from student_table where student_id between 2 and 4;
 
 

 insert into student_table(student_id,student_name,course_name,email)
 values(5,'nik','tycs','nike4@gmail.com');
 
 insert into student_table(student_id,student_name,course_name,email)
 values(6,'rohit','comcs','rohit@gmail.com');

# for delete records from table
set sql_safe_updates=0;

delete from student_table
where student_id=4;
 
 select * from student_table;
 
 
  # LIKE ( Pattern match)
 
 select * from student_table where email like 'r%'; 
 #         % used for show the record  start char with r
 
 select * from student_table where email like '%4%';
 
 
 # NULL VALUES
 
 insert into student_table(student_id,student_name,course_name)
 values(10,'rohit','comcss');

insert into student_table(student_id,student_name)
 values(11,'rohitmo');

SELECT * from student_table;

# find NULL values

select * from student_table where email is null;


# update 
set SQL_SAFE_updates=0;
update student_table
set student_name='NIKHIL GOPALE'
where student_id=1;

SELECT * from student_table;

# JOINS
# inner joins


