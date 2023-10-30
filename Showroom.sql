create database showroom;
use showroom;

create table products(item_id int primary key auto_increment, 
item_name varchar(50),
price float,
no_of_years_warranty varchar(50),
color varchar(50),
brand_name varchar(50),
item_type varchar(50),
percentage_of_discount varchar(50)); 

select * from products;