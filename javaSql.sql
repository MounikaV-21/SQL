Select * from instagram;

Create table customers(id int auto_increment, cust_name varchar(20), email varchar(25), phoneNo bigint, c_password varchar(20), address varchar(50), primary key(id));
select * from customers;

create table students(
id int not null auto_increment primary key,
name varchar(50) not null, 
enrolled timestamp not null,
progress int not null
);


create database sales;
use sales;

create table review(id int(11) primary key auto_increment not null, 
course_name varchar(128) not null,
student_name varchar(45) not null,
timestamp timestamp not null,
rating float not null,
comment varchar(1024));

desc review;
select * from sales.review;

insert into review values(1,'javaServlet','Megha','2019-07-09 20:40:20', 4.5,'Great experience');
insert into review values(2,'Python','Sunil','2019-07-04 15:29:08', 5,'Good');
insert into review values(3,'.NET','Geetha','2019-06-28 21:46:56', 3.5,'Its my first ever paid course ');
insert into review values(4,'MySQL','Aishu','2019-06-23 17:00:09', 4,'Amazing ');
insert into review values(5,'C++','Anil','2019-06-18 02:50:17', 4.2,'Excellent');
insert into review values(6,'C','Rohith','2019-05-30 22:17:49',3,'Not good');

CREATE TABLE `students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `enrolled` timestamp NOT NULL,
  `progress` int(11) NOT NULL,
  PRIMARY KEY (`id`)
);

desc students;
select * from students;

create database BookMyShow;
use BookMyShow;

create table movie_tickets(id int primary key auto_increment, movie_name varchar(50), m_language varchar(50), location varchar(50), price float, no_of_tickets int, theater_name varchar(50), timings time);
select * from movie_tickets;

select * from movie_tickets where id = 1

