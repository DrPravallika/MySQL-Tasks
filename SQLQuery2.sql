create database cars;
use cars;
create table car_details(car_model varchar(40),car_make date,serial_no int);
create table car_details(car_model varchar(40),car_make date,serial_no int not null);
alter table car_details alter column serial_no int not null; 
alter table car_details add type varchar(30)unique;
alter table car_details add primary key(serial_no);
create table buyer_details(name varchar(20),serial_no int foreign key references car_details(serial_no));
alter table buyer_details add age int check (age>18);
alter table buyer_details add country varchar(30) default 'india';
insert into car_details(car_model,serial_no,type) values('Tata_harrier',1,'suv');
insert into buyer_details values('Luchki',1,28,'india');

select*from car_details;
select*from buyer_details;

insert into car_details values('Tata_harrier','2024-02-02',2,'xlsuv')
insert into buyer_details values('Luchki',2,28,'india');
update buyer_details set name='luchki_alp' where serial_no=1;
delete from cars where car_make='2024-02-02';