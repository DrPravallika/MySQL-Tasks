create database pets;
use pets;
create table pets(pet_name varchar(40),pet_id int,gender varchar(30),pet_type varchar(30),age int,owner_id varchar(30));

select*from pets;
alter table pets add dob date;
alter table pets drop column dob;



