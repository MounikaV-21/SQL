CREATE DATABASE july_08;
USE july_08;

CREATE TABLE sales_info(id int , first_name varchar(255), last_name varchar(255), sup_id int, cat_id int, quantity_per_unit varchar(255), unit_price int, in_stocks int, on_order int, reorder_level int, discontinued int);
select * from sales_info;
ALTER TABLE sales_info ADD COLUMN (address varchar(255), phone_number bigint, city varchar(255), country varchar(255), pin_code int);

Alter TABLE sales_info DROP COLUMN cat_id;


ALTER TABLE sales_info RENAME COLUMN sup_id TO manger_id;
ALTER TABLE sales_info RENAME COLUMN country TO state;
ALTER TABLE sales_info RENAME COLUMN reorder_level TO order_level;

ALTER TABLE  sales_info MODIFY COLUMN phone_number float;
ALTER TABLE  sales_info MODIFY COLUMN last_name char;
ALTER TABLE  sales_info MODIFY COLUMN unit_price double;
ALTER TABLE  sales_info MODIFY COLUMN in_stocks boolean;
ALTER TABLE  sales_info MODIFY COLUMN pin_code long;
desc sales_info;

create table speaker(id int, name varchar(20), res varchar(20), model varchar(20), pixels varchar(20), is_available boolean, price int, size int, rel_date varchar(20), warrantty varchar(20));
     
     alter table speaker add column (new_id int, new_name varchar(20), color varchar(20), new_model varchar(20), quality varchar(20));
 
 alter table speaker drop column id, drop name;
 
alter table speaker rename column new_id to old_id;
alter table speaker rename column new_name to old_name;
alter table speaker rename column res to res_good;
 
 alter table speaker modify column color float;
 alter table speaker modify column price  float;
 alter table speaker modify column pixels boolean;
 alter table speaker modify column model int;
 alter table speaker modify column quality varchar(20);
desc speaker;

create table patients_identity(id int, first_name varchar(30), last_name varchar(20), cause_name varchar(20), phone_number bigint(20), address varchar(20), email varchar(20), is_active varchar(20), is_dead int, is_sick float); 
 select * from patients_identity;
 
 alter table patients_identity add column(new_id int, 
 new_patient varchar(20),
 new_cause varchar(20),
 new_address varchar(20),
 new_email varchar(20));
 
 alter table patients_identity drop column id, drop first_name;
 
 alter table patients_identity rename column is_dead to not_dead;
 alter table patients_identity rename column new_patient to not_there;
 alter table patients_identity rename column new_email to age;
 
 alter table patients_identity modify column email float;
  alter table patients_identity modify column last_name char;
   alter table patients_identity modify column address float;
    alter table patients_identity modify column cause_name boolean;
     alter table patients_identity modify column phone_number int;
desc patients_identity;

create table more(id int, name varchar(20), cat varchar(20), price int, quantity varchar(20), quality varchar(20), manuf_date varchar(20), expire_date varchar(20) ,loaction varchar(20), address varchar(20));
 select * from more;
 
 alter table more add(new_item varchar(20),
 old_item varchar(20),
 delivery varchar(20),
 manager varchar(20),
 new_loc varchar(20));
 
 alter table more drop column id, drop name;
 
 alter table more rename column cat to category;
 alter table more rename column price to cost;
 alter table more rename column quantity to good;
 
 alter table more modify column cost double;
alter table more modify column old_item boolean;
alter table more modify column delivery double;
alter table more modify column manager float;
alter table more modify column new_loc int;
desc more;

create table player_data(id int, run int, high_run varchar(20), low_run varchar(20), name varchar(20),is_bowling boolean, is_batting boolean, centuries int, matches int, role varchar(20));
 select * from player_data;
 
 alter table player_data add column (old_player varchar(20),
 new_player varchar(20), 
 new_runs int, 
 old_runs int, 
 not_bolwing varchar(20));
 
 alter table player_data drop column id, drop run;
 
 alter table player_data rename column high_run to highest_run; 
 alter table player_data rename column low_run to lowest_run;
 alter table player_data rename column name to player_name;
 
 alter table player_data modify column new_player int;
 alter table player_data modify column new_runs float;
  alter table player_data modify column old_runs double;
   alter table player_data modify column old_player boolean;
    alter table player_data modify column matches double;
desc player_data;

create table mobile_data(id int, brand varchar(20), model varchar(20), inch int, rel_date varchar (20) , warrantty varchar(20), price int, is_available boolean, cam_quality boolean, is_good boolean);
select * from mobile_data;

alter table mobile_data add column (new_id int,
 new_brand varchar(20),
 is_bad varchar(20), 
 pixels varchar(20),
 color varchar(20));
 
 alter table mobile_data drop column  id, drop column brand;
 
 alter table mobile_data rename column model to model_brand;
  alter table mobile_data rename column inch to size;
   alter table mobile_data rename column rel_date to login_date;

alter table mobile_data modify column pixels boolean;
alter table mobile_data modify column price double;
alter table mobile_data modify column color float;
alter table mobile_data modify column is_available char;
 alter table mobile_data modify column cam_quality double;
desc mobile_data;

create table ac_data(id int, brand varchar(20), model varchar(20), cool_cap varchar (20), ac_type varchar(20), color varchar(20),price int, manuf_date varchar(20), warrantty varchar(20), is_available boolean);
 select * from ac_data;
 
 alter table ac_data add column (version varchar(20),
 good_model varchar(20), 
 is_there varchar(20), 
 capacity varchar(20), 
 quality varchar(20), 
 is_good varchar(20));
 
 alter table ac_data drop column good_model , drop capacity;

alter table ac_data rename column model to model_type;
alter table ac_data rename column brand to brand_type;
alter table ac_data rename column cool_cap to temp;

alter table ac_data modify column color char;
alter table ac_data modify column ac_type boolean;
alter table ac_data modify column warrantty float;
alter table ac_data modify column manuf_date int;
alter table ac_data modify column quality int;
desc ac_data;

create table labs_data(id int, name varchar(20), loc varchar(20), address varchar(20), start_time int, end_time int, is_good boolean, is_bad boolean, city varchar(20), email varchar(20));
select * from labs_data;
alter table labs_data add column (lab_type varchar(20),
 lab_cat varchar(20), 
 lab_recipent varchar(20),
 lab_admit varchar(20), 
 lab_manage varchar(20));
 
 alter table labs_data drop column loc; 
 alter table labs_data drop column  address; 
 
 alter table labs_data rename column start_time to begin_time;
 alter table labs_data rename column end_time to stop_time;
 alter table labs_data rename column is_good to not_bad;
 
 alter table labs_data modify column id long;
  alter table labs_data modify column stop_time int;
 alter table labs_data modify column city char;
 alter table labs_data modify column email float;
 alter table labs_data modify column name char;
desc labs_data;

create table funds_data(fund_id int, fund_name varchar(20), fund_inc int,fund_dec int, fund_profit int, fund_interest int, fund_address varchar(20), fund_req int, fund_captital varchar(20), fund_back varchar(20));
select * from funds_data;

alter table funds_data add column(fund_done varchar(20),
fund_not_done varchar(20),
fund_modify varchar(20),
fund_data varchar(20),
fund_up_to_date varchar(20));

alter table funds_data drop column fund_name;
alter table funds_data drop column fund_inc;

alter table funds_data rename column fund_dec to fund_lossing;
alter table funds_data rename column fund_profit to fund_savings;
alter table funds_data rename column fund_req to fund_not_req;

alter table funds_data modify column fund_back float;
alter table funds_data modify column fund_address boolean;
alter table funds_data modify column fund_up_to_date char;
alter table funds_data modify column fund_data int;
alter table funds_data modify column fund_modify float;
desc funds_data;

CREATE TABLE java_class(java_version varchar(10),
 java_ide varchar(10), 
 java_method varchar(20), 
 java_features varchar(20),
 java_statements varchar(30), 
 java_conditions varchar (30), 
 java_library varchar(20), 
 java_commands varchar(20), 
 java_functions varchar (20), 
 java_types varchar(20));
select * from java_class;

ALTER TABLE java_class ADD COLUMN (java_packages varchar(20),java_data_types varchar(20),java_advance varchar(20),java_variables varchar(20),java_class varchar(10));

Alter Table java_class DROP column java_method;
Alter Table java_class DROP column java_functions;

ALTER TABLE java_class RENAME COLUMN java_ide TO java_interface;
ALTER TABLE java_class RENAME COLUMN java_commands TO java_read;
ALTER TABLE java_class RENAME COLUMN java_types TO java_protocols;

ALTER TABLE java_class modify column java_packages int;
ALTER TABLE java_class modify column java_protocols boolean;
ALTER TABLE java_class modify column java_features char;
ALTER TABLE java_class modify column java_conditions float;
ALTER TABLE java_class modify column java_library char ;
desc java_class;








create table universities_info(student_name varchar(15), faculty_name varchar(15), subject_name varchar(10), class varchar(5), result varchar(5), room_no varchar(6), convener_name varchar(10), tutor varchar(10), salary int, scholarship int);
select * from universities_info;

alter table universities_info add column(provider_name varchar(10), faculty_id int);

alter table universities_info rename column tutor to tutor_name;
alter table universities_info rename column class to class_name;

insert into universities_info values('priyanka' , 'Megha' , 'Maths' , 'I pu' , '2rank' , 2 , 'Punith' , 'Sagar' , 10000 , 5000 , 'Mahi' , 01);
insert into universities_info values('Shruti' , 'Sunil' , 'Physics' , 'I pu' , '1rank' , 3 , 'Punith' , 'Sagar' , 15000 , 5000 , 'Mahi' , 02);
insert into universities_info values('Bhavya' , 'Mohan' , 'Chemistry' , 'I pu' , '3rank' , 10 , 'Punith' , 'Sagar' , 20000 , 5000 , 'Mahi' , 03);
insert into universities_info values('Akshitha' , 'Vani' , 'Biology' , 'I pu' , '4rank' , 55 , 'Punith' , 'Sagar' , 25000 , 5000 , 'Mahi' , 04);
insert into universities_info values('Aishwarys' , 'Pavana' , 'CS' , 'I pu' , '5rank' , 12 , 'Punith' , 'Sagar' , 25000 , 5000 , 'Mahi' , 05);
insert into universities_info values('Rachana' , 'Suresh' , 'Kannada' , 'I pu' , '6rank' , 22 , 'Punith' , 'Sagar' , 20000 , 5000 , 'Mahi' , 06);
insert into universities_info values('Menaka' , 'Muzib' , 'English' , 'I pu' , '7rank' , 23 , 'Punith' , 'Sagar' , 10000 , 5000 , 'Mahi' , 07);
insert into universities_info values('Sushmitha' , 'Manoj' , 'Hindi' , 'I pu' , '8rank' , 24 , 'Punith' , 'Sagar' , 15000 , 5000 , 'Mahi' , 08);
insert into universities_info values('Anusha' , 'Apoorva' , 'C' , 'BCA' , '9rank' , 25 , 'Punith' , 'Sagar' , 15000 , 5000 , 'Mahi' , 09);
insert into universities_info values('Kavya' , 'Rchitha' , 'C++' , 'BCA' , '1rank' , 26 , 'Punith' , 'Sagar' , 20000 , 5000 , 'Mahi' , 10);
insert into universities_info values('Pavithra' , 'Manohar' , 'DS' , 'BCA' , '2rank' , 27 , 'Punith' , 'Sagar' , 40000 , 5000 , 'Mahi' , 11);
insert into universities_info values('Chithra' , 'Pallavi' , 'Java' , 'BCA' , '3rank' , 28 , 'Punith' , 'Sagar' , 45000 , 5000 , 'Mahi' , 12);
insert into universities_info values('Chandana' , 'Yeshwanth' , 'Micro' , 'BCA' , '4rank' , 29 , 'Punith' , 'Sagar' , 50000 , 5000 , 'Mahi' , 13);
insert into universities_info values('Keerthana' , 'Samatha' , 'Accounts' , 'BCA' , '5rank' , 30 , 'Punith' , 'Sagar' , 50000 , 5000 , 'Mahi' , 14);
insert into universities_info values('Mamatha' , 'Sindhu' , 'Ui' , 'MCA' , '6rank' , 31 , 'Punith' , 'Sagar' , 30000 , 5000 , 'Mahi' , 15);
insert into universities_info values('Mounika' , 'Sanjay' , 'UX' , 'MCA' , '7rank' , 32 , 'Punith' , 'Sagar' , 10000 , 5000 , 'Mahi' , 16);
insert into universities_info values('Ghanavi' , 'Goutham' , 'ML' , 'MCA' , '8rank' , 33 , 'Punith' , 'Sagar' , 15000 , 5000 , 'Mahi' , 17);
insert into universities_info values('Triveni' , 'Prem' , 'Web' , 'MCA' , '9rank' , 34 , 'Punith' , 'Sagar' , 20000 , 5000 , 'Mahi' , 18);
insert into universities_info values('Kavitha' , 'Lucky' , 'OOPS' , 'MCA' , '1rank' , 35 , 'Punith' , 'Sagar' , 30000 , 5000 , 'Mahi' , 19);
insert into universities_info values('Uma' , 'Gangothri' , 'IOT' , 'MCA' , '2rank' , 36 , 'Punith' , 'Sagar' , 40000 , 5000 , 'Mahi' , 20);
select * from universities_info;

select * from universities_info where class_name = 'MCA';
select * from universities_info where student_name = 'Priyanks';
select * from universities_info where faculty_name = 'Goutham';
select * from universities_info where subject_name = 'Maths';
select * from universities_info where result = '2rank';
select * from universities_info where room_no = 10;
select * from universities_info where convener_name = 'Punith';
select * from universities_info where tutor_name = 'Sagar';
select * from universities_info where salary = 10000;
select * from universities_info where scholarship = 5000;

create table airport_info(code_val varchar(50), airport_name varchar(20), city_code varchar(20), city_name varchar(20), country_name varchar(20), country_code varchar(20), time_zone varchar(8), lat varchar(10), lon varchar(10), num_airports int);
select * from airport_info;

alter table airport_info add column(checkin_time varchar(10), checkout_time varchar(10));

alter table airport_info rename column lat to latitude;
alter table airport_info rename column lon to longitude;

insert into airport_info values('ANW', 'Ainsworth Arpt', 'ANW', 'Ainsworth', 'UNITED STATES', 'US', '-100', '42.58', '-99.9933', 1, '3 clk', '4 clk');
insert into airport_info values('ANU', 'V C Bird Intl Arpt', 'ANU', 'Antigua', 'ANTIGUA AND BARBUDA', 'AG', '-4', '17.136749', '-61.792667', 1, '2clk', '5clk' );
insert into airport_info values('ANR', 'Antwerp North', 'ANR', 'Antwerp', 'BELGIUM', 'BE', '1', '51.189444', '4.460278', 1, '4clk', '6clk');
insert into airport_info values('ANP', 'Lee Annapolis Arpt', 'ANP', 'Annapolis', 'UNITED STATES', 'US', '-100', '0', '0', 1, '1clk', '3clk');
insert into airport_info values('ANI', 'Aniak Arpt', 'ANI', 'Aniak', 'UNITED STATES', 'US', '-9', '61.5816', '-159.543', 1, '2clk', '3clk');
insert into airport_info values('ESB', 'Esenboga Arpt', 'ANK', 'Ankara', 'TURKEY', 'TR', '2', '40.128082', '32.995083', 1, '10clk', '12clk');
insert into airport_info values('ANG', 'Brie Champniers', 'ANG', 'Angouleme', 'FRANCE', 'FR', '1', '45.729247', '0.221456', 1, '9clk', '11clk');
insert into airport_info values('ANF', 'Cerro Moreno Arpt', 'ANF', 'Antofagasta', 'CHILE', 'CL', '-4', '-23.444478', '-70.4451', 1, '8clk', '9clk');
insert into airport_info values('ANE', 'Marce Arpt', 'ANE', 'Angers', 'FRANCE', 'FR', '1', '47.5603', '-0.312222', 1, '6clk', '7clk');
insert into airport_info values('AND', 'Anderson Arpt', 'AND', 'Anderson', 'UNITED STATES', 'US', '-5', '34.494583', '-82.709389', 1, '7clk', '8clk');
insert into airport_info values('ANC', 'Anchorage Intl Arpt', 'ANC', 'Anchorage', 'UNITED STATES', 'US', '-9', '61.174361', '-149.99', 1, '8clk', '9clk');
insert into airport_info values('ANB', 'Anniston Arpt', 'ANB', 'Anniston', 'UNITED STATES', 'US', '-6', '33.588167', '-85.858111', 1, '9clk', '10clk');
insert into airport_info values('ANA', 'Anaheim Arpt', 'ANA', 'Anaheim', 'UNITED STATES', 'US', '-100', '0', '0', 1, '1clk', '2clk');
insert into airport_info values('AMW', 'Ames Minicipal Arpt', 'AMW', 'Ames', 'UNITED STATES', 'US', '-100', '0', '0', 1, '2clk', '3clk');
insert into airport_info values('AMV', 'Amderma Airport', 'AMV', 'Amderma Airport', 'RUSSIA', 'RU', '4', '69.7633', '61.5564', 1, '3clk', '4clk');
insert into airport_info values('AMS', 'Schiphol Arpt', 'AMS', 'Amsterdam', 'NETHERLANDS', 'NL', '1', '52.308613', '4.763889', 2, '2clk', '3clk');
insert into airport_info values('ZYA', 'Amsterdam Station', 'AMS', 'Amsterdam', 'NETHERLANDS', 'NL', '1', '52.7873', '4.90074', 2, '2clk', '3clk');
insert into airport_info values('AMQ', 'Pattimura Arpt', 'AMQ', 'Ambon', 'INDONESIA', 'ID', '9', '-3.710264', '128.089136', 1, '3clk', '4clk');
insert into airport_info values('AMM', 'Queen Alia Intl Arpt', 'AMM', 'Amman', 'JORDAN', 'JO', '2', '31.722556', '35.993214', 2, '4clk', '5clk');
insert into airport_info values('ADJ', 'Civil Marka Arpt', 'AMM', 'Amman', 'JORDAN', 'JO', '2', '31.972703', '35.991569', 2, '3clk', '4clk');
select * from airport_info;

select * from airport_info where code_val = 'ANW';
select * from airport_info where airport_name = 'Antwerp North';
select * from airport_info where city_code = 'ANp';
select * from airport_info where city_name = 'Aniak';
select * from airport_info where country_name = 'CHILE';
select * from airport_info where country_code = 'CL';
select * from airport_info where time_zone = '-4';
select * from airport_info where latitude = '47.5603';
select * from airport_info where longitude = '0';
select * from airport_info where num_airports = 1;

create table olympic_info(olympic_id int, p_name varchar(20), p_gender varchar(20), g_location varchar(20), o_year int, p_age int, o_result varchar(10), o_medals varchar(10), participated varchar(10), o_date varchar(20));
select * from olympic_info;

insert into olympic_info values(01, 'Flora Duffy', 'Male', 'Berlin', 2018, 32, 'Won', 'Gold Medal', 'Yes', 'jun-12');
insert into olympic_info values(02, 'Katie Ledecky', 'Female', 'USA', 2016, 28, 'Won', 'Silver Medal', 'Yes', 'jan-1');
insert into olympic_info values(03, 'Caeleb Dressel', 'Male', 'USA', 2005, 30, 'Won', 'Silver Medal', 'Yes', 'Feb-21');
insert into olympic_info values(04, 'Tomoa', 'Male', 'Japan', 2016, 36, 'Lose', 'No Medal', 'No', 'Aug-12');
insert into olympic_info values(05, 'Natalia', 'Female', 'USA', 2011, 27, 'Won', 'Gold Medal', 'Yes', 'Mar-02');
insert into olympic_info values(06, 'Irfan', 'Male', 'India', 2017, 29, 'Lose', 'No Medal', 'No', 'Apr-02');
insert into olympic_info values(07, 'Sandeep', 'Male', 'India', 2010, 26, 'Won', 'Silver Medal', 'Yes', 'May-12');
insert into olympic_info values(08, 'Rahul', 'Male', 'India', 2015, 30, 'Won', 'Gold Medal', 'Yes', 'Jun-30');
insert into olympic_info values(09, 'Priyanka', 'Female', 'India', 2019, 31, 'Won', 'Silver Medal', 'Yes', 'jul-25');
insert into olympic_info values(10, 'Avinash', 'Male', 'India', 2014, 27, 'Lose', 'No Medal', 'No', 'Sep-09');
insert into olympic_info values(11, 'PV Sindhu', 'Female', 'India', 2019, 35, 'Won', 'Gold Medal', 'Yes', 'Oct-12');
insert into olympic_info values(12, 'Nikhil', 'Male', 'USA', 2002, 33, 'Won', 'Silver Medal', 'Yes', 'Nov-12');
insert into olympic_info values(13, 'Amar', 'Male', 'Canada', 2016, 30, 'Lose', 'No Medal', 'Yes', 'Dec-22');
insert into olympic_info values(14, 'Sukhi', 'Male', 'Canada', 2014, 28, 'Lose', 'No Medal', 'Yes', 'jan-14');
insert into olympic_info values(15, 'Kaylee', 'Female', 'Aus', 2009, 29, 'Lose', 'No Medal', 'Yes', 'feb-03');
insert into olympic_info values(16, 'Filipe', 'Male', 'Brazil', 2013, 25, 'Won', 'Silver Medal', 'Yes', 'Mar-12');
insert into olympic_info values(17, 'Yuto', 'Male', 'Japan', 2020, 39, 'Lose', 'No Medal', 'Yes', 'Apr-12');
insert into olympic_info values(18, 'Neeraj', 'Male', 'India', 2016, 34, 'Won', 'Gold Medal', 'Yes', 'May-12');
insert into olympic_info values(19, 'Yavi', 'Male', 'BRN', 2014, 30, 'Won', 'Silver Medal', 'Yes', 'jul-19');
insert into olympic_info values(20, 'Rojas', 'Female', 'VEN', 2019, 27, 'Lose', 'No Medal', 'Yes', 'Aug-12');
select * from olympic_info;

alter table olympic_info modify o_medals varchar(30);

update olympic_info set g_location = 'India' where olympic_id = 01;




CREATE TABLE hotel_infomation(hotel_id int not null unique, hotel_names varchar(40) not null unique, hotel_price int not null unique, hotel_floor int not null unique, hotel_menu varchar(40) not null unique, hotel_service varchar(30) unique, coustomer_name varchar(30) unique, hotel_roomtype varchar(30) unique, hotel_booking int default 1, local_hotel varchar(30) default 'locall');

select * FROM hotel_infomation; 


INSERT INTO hotel_infomation(hotel_id,hotel_names,hotel_price,hotel_floor,hotel_menu,hotel_service,coustomer_name,hotel_roomtype)values(01,'oberoi',1000,1,'south','service','raj','ac');
INSERT INTO hotel_infomation(hotel_id,hotel_names,hotel_price,hotel_floor,hotel_menu,hotel_service,coustomer_name,hotel_roomtype)values(02,'ibis',2000,2,'Kolar','ac_with_service','nivedita','luxuray');
INSERT INTO hotel_infomation(hotel_id,hotel_names,hotel_price,hotel_floor,hotel_menu,hotel_service,coustomer_name,hotel_roomtype)values(03,'ashoka',3000,3,'Veg','ac','kavya','normal');
INSERT INTO hotel_infomation(hotel_id,hotel_names,hotel_price,hotel_floor,hotel_menu,hotel_service,coustomer_name,hotel_roomtype)values(04,'vegi',4000,4,'Non-veg','non-ac','pallavi','Social');
INSERT INTO hotel_infomation(hotel_id,hotel_names,hotel_price,hotel_floor,hotel_menu,hotel_service,coustomer_name,hotel_roomtype)values(05,'ganvi',5000,5,'both','Family','ravi','Personal');
INSERT INTO hotel_infomation(hotel_id,hotel_names,hotel_price,hotel_floor,hotel_menu,hotel_service,coustomer_name,hotel_roomtype)values(06,'3star',6000,6,'Roti','Standard','pravina','Warehousing');
INSERT INTO hotel_infomation(hotel_id,hotel_names,hotel_price,hotel_floor,hotel_menu,hotel_service,coustomer_name,hotel_roomtype)values(07,'kandanbha',7000,7,'Puri','Deluxe','ganvi','With TV');
INSERT INTO hotel_infomation(hotel_id,hotel_names,hotel_price,hotel_floor,hotel_menu,hotel_service,coustomer_name,hotel_roomtype)values(08,'srinivas',8000,8,'Upma',' Room only','yash','normal_roomtype');
INSERT INTO hotel_infomation values(09,'prasana',900,9,'Dosa','Capsule','laxshmi','3_Sharing',1,'Royal');
INSERT INTO hotel_infomation values(10,'akshya',500,10,'Idli','Executive','mounika','lAc_Single_bed',2,'Prajwal');
INSERT INTO hotel_infomation values(11,'Holiday',400,11,'Karabath','Presidential','Bhavya','Fam_Sharing',3,'Vittals');
INSERT INTO hotel_infomation values(12,'Redisson',10000,12,'Gobi Rice','Sigle bed','Priyanka','Business',4,'Trishul');
INSERT INTO hotel_infomation values(13,'The park',15000,13,'Gobi','Ac_2_Sharing','Aishwarya','local',5,'Naidu');
 

create table social_media_user(user_id int not null unique, username varchar(50) not null unique, email varchar(50) not null unique, u_password varchar (50) not null unique, full_name varchar(50) not null unique, date_of_birth date not null unique, country varchar(50) not null unique, city varchar(50) not null unique, bio varchar(50) not null unique, profile_url varchar(50) not null unique, join_date date unique, last_login varchar(50) unique, followers_count int unique, following_count int unique, posts_count int unique, likes_count int default 50, cover_photo_url varchar(50) default "www.coverphoto.com", website varchar(50) default "www.instagram.com", comments_count int, gender varchar(50));
select * from social_media_user;

insert into social_media_user(user_id,username,email,u_password,full_name,date_of_birth,country,city,bio,profile_url,join_date,last_login,followers_count,following_count,posts_count,comments_count,gender)values(01,"Mou_nika","mouni@gamil.com","mouni123","Mounika V","1999-10-02","India","Kolar","I like social media","mouni_v_monu","2018-12-02","2 days ago",500,290,50,10,"Female");
insert into social_media_user(user_id,username,email,u_password,full_name,date_of_birth,country,city,bio,profile_url,join_date,last_login,followers_count,following_count,posts_count,comments_count,gender)values(02,"Megha_a","megh@gmail.com","megha12","Meghana","1998-11-03","Algeria","Kgf","Like","meg_ha","2017-02-10","1 days ago",400,190,60,30,"Female");
insert into social_media_user(user_id,username,email,u_password,full_name,date_of_birth,country,city,bio,profile_url,join_date,last_login,followers_count,following_count,posts_count,comments_count,gender)values(03,"San_deep","sandeep@gamil.com","sandeep32","Sandeep","1997-03-03","Albania","Mandya","social media","Sand_eep_v","2017-12-30","4 days ago",100,130,100,200,"Men");
insert into social_media_user(user_id,username,email,u_password,full_name,date_of_birth,country,city,bio,profile_url,join_date,last_login,followers_count,following_count,posts_count,comments_count,gender)values(04,"Sunil","sunil@gamil.com","sunil777","Sunil B R","1996-05-30","Britain","Mysore","Be you always","sunil_b","2002-12-03","1 hour ago",600,900,10,200,"Male");
insert into social_media_user(user_id,username,email,u_password,full_name,date_of_birth,country,city,bio,profile_url,join_date,last_login,followers_count,following_count,posts_count,comments_count,gender)values(05,"Moan_sai","mohan@gamil.com","mohans","Mohan Sai","1998-06-10","Norway","BTM","Laugh","Mohan_sai_p","2017-07-11","45 min ago",50,101,05,100,"Male");
insert into social_media_user(user_id,username,email,u_password,full_name,date_of_birth,country,city,bio,profile_url,join_date,last_login,followers_count,following_count,posts_count,comments_count,gender)values(06,"Shruthi","shruthi@gamil.com","shruthi@01","Shruthi B","1999-11-15","Germany","Hosur","Live","shruthi_b","2018-01-03","11 min ago",520,220,90,120,"Female");
insert into social_media_user(user_id,username,email,u_password,full_name,date_of_birth,country,city,bio,profile_url,join_date,last_login,followers_count,following_count,posts_count,comments_count,gender)values(07,"Priyanka","pri@gamil.com","priya@1","Priyanka P","2000-01-01","Irish","Coorg","Alone","Priyanka_P","2018-11-30","5 min ago",510,210,80,110,"Female");
insert into social_media_user(user_id,username,email,u_password,full_name,date_of_birth,country,city,bio,profile_url,join_date,last_login,followers_count,following_count,posts_count,comments_count,gender)values(08,"Aishwarya","aishu@gamil.com","aishu@32","Aishwarya H","2000-01-02","Russia","Bangalore","I dream big","aishu_h","2018-11-01","1 min ago",110,230,110,120,"Female");
insert into social_media_user(user_id,username,email,u_password,full_name,date_of_birth,country,city,bio,profile_url,join_date,last_login,followers_count,following_count,posts_count,comments_count,gender)values(09,"Rachu","rachu@gamil.com","rachu@21","Rachana","2002-05-03","Australia","Bethamangala","addict","Rachana_a","2011-02-10","21 days ago",511,291,51,11,"Female");
insert into social_media_user(user_id,username,email,u_password,full_name,date_of_birth,country,city,bio,profile_url,join_date,last_login,followers_count,following_count,posts_count,comments_count,gender)values(10,"Anusha","anu@gamil.com","anu@91","Anusha P","2000-03-010","Dutch","Velur","Personal","Anusha_p","2018-12-09","10 days ago",512,292,52,12,"Female");

insert into social_media_user(user_id,username,email,u_password,full_name,date_of_birth,country,city,bio,profile_url,join_date,last_login,followers_count,following_count,posts_count,comments_count,gender)values(11,"Bhavya","bhavya@gamil.com","bhavya@948","Bhavya S D","2001-03-11","France","Kalaburgi","Radiant","bhavya_s","2018-10-10","11 days ago",12,293,601,101,"Female");
insert into social_media_user(user_id,username,email,u_password,full_name,date_of_birth,country,city,bio,profile_url,join_date,last_login,followers_count,following_count,posts_count,comments_count,gender)values(12,"Kushi","kushi@gamil.com","kushi@45","Kushi L","2002-03-12","China","Vijaypura","Blissful","Kushi_l","2012-12-09","12 days ago",52,294,602,102,"Female");
insert into social_media_user(user_id,username,email,u_password,full_name,date_of_birth,country,city,bio,profile_url,join_date,last_login,followers_count,following_count,posts_count,comments_count,gender)values(13,"Suresh","suresh@gamil.com","suresh@835","Suresh M","2003-04-13","Cambodia","Raichur","Dreamy","suresh_m","2013-12-09","13 days ago",51,295,603,103,"male");
insert into social_media_user(user_id,username,email,u_password,full_name,date_of_birth,country,city,bio,profile_url,join_date,last_login,followers_count,following_count,posts_count,comments_count,gender)values(14,"Charan","charan@gamil.com","charan@453","Charan S","2004-05-14","Bangladesh","Bidar","Sassy","charan_s","2014-12-09","14 days ago",542,296,703,104,"male");
insert into social_media_user(user_id,username,email,u_password,full_name,date_of_birth,country,city,bio,profile_url,join_date,last_login,followers_count,following_count,posts_count,comments_count,gender)values(15,"Goutham","goutham@gamil.com","goutham@34","Goutham S","2005-06-15","Denmark","Hospet","Confident","Goutham_s","2015-12-09","15 days ago",543,297,604,105,"male");
insert into social_media_user(user_id,username,email,u_password,full_name,date_of_birth,country,city,bio,profile_url,join_date,last_login,followers_count,following_count,posts_count,comments_count,gender)values(16,"Sanjay","sanjay@gamil.com","sanjay@245","Sanjay R","2006-07-16","Bulgaria","Gadag","Fearless","Sanjay_r","2016-12-09","16 days ago",545,298,605,106,"male");
insert into social_media_user(user_id,username,email,u_password,full_name,date_of_birth,country,city,bio,profile_url,join_date,last_login,followers_count,following_count,posts_count,comments_count,gender)values(17,"Sudhakar","sudhakar@gamil.com","sudhakar@912","Sudhakar P","2007-08-17","Greece","Bhadravati","Empowered","sudhakar_p","2014-04-09","17 days ago",546,299,606,106,"male");
insert into social_media_user(user_id,username,email,u_password,full_name,date_of_birth,country,city,bio,profile_url,join_date,last_login,followers_count,following_count,posts_count,comments_count,gender)values(18,"Rahul","rahul@gamil.com","rahul@10","Rahul D","2008-09-18","Albaria","Chitradurga","Glamourous","rahul_d","2018-06-09","18 days ago",547,301,607,107,"male");
insert into social_media_user(user_id,username,email,u_password,full_name,date_of_birth,country,city,bio,profile_url,join_date,last_login,followers_count,following_count,posts_count,comments_count,gender)values(19,"Manohar","manohar@gamil.com","mano@25","Manohar A","2009-10-19","Armenia","Gangavati","Team","Manohar_a","2018-11-09","19 days ago",548,302,608,108,"male");
insert into social_media_user(user_id,username,email,u_password,full_name,date_of_birth,country,city,bio,profile_url,join_date,last_login,followers_count,following_count,posts_count,comments_count,gender)values(20,"Manoj","manoj@gamil.com","manoj@25","Manoj K","2010-11-20","Belarus","Velurr","Bagalkot","Manoj_k","2018-05-30","20 days ago",549,303,609,109,"male");

insert into social_media_user(user_id,username,email,u_password,full_name,date_of_birth,country,city,bio,profile_url,join_date,last_login,followers_count,following_count,posts_count,comments_count,gender)values(21,"Kavitha","kavi@gamil.com","Kavi@24","Kavitha N","2011-01-01","Brunel","Coimboture","Forevermore","Kavitha_N","2018-01-10","211 days ago",513,304,611,111,"Female");
insert into social_media_user(user_id,username,email,u_password,full_name,date_of_birth,country,city,bio,profile_url,join_date,last_login,followers_count,following_count,posts_count,comments_count,gender)values(22,"Apoorva","apoorva@gamil.com","apoo@0193","Apoorva S","2012-02-02","Cuba","Munnar","Unity","Apoorva_s","2012-02-28","22 days ago",514,305,612,112,"Female");
insert into social_media_user(user_id,username,email,u_password,full_name,date_of_birth,country,city,bio,profile_url,join_date,last_login,followers_count,following_count,posts_count,comments_count,gender)values(23,"Dharshan","dharshan@gamil.com","dharshan@901","Dharshan sai","2013-03-03","Angola","Ranebennuru","Vibes","Dhanu_sai","2015-12-19","23 days ago",515,306,613,113,"male");
insert into social_media_user(user_id,username,email,u_password,full_name,date_of_birth,country,city,bio,profile_url,join_date,last_login,followers_count,following_count,posts_count,comments_count,gender)values(24,"Karthik","karthi@gamil.com","Karthi@193","Karthik R","2014-04-04","Japan","Davanagere","Memories","Karthi_r","2010-12-10","24 days ago",516,307,614,114,"male");
insert into social_media_user(user_id,username,email,u_password,full_name,date_of_birth,country,city,bio,profile_url,join_date,last_login,followers_count,following_count,posts_count,comments_count,gender)values(25,"Rakshitha","rakshu@gamil.com","Rakshu@913","Rakshitha T","2015-05-05","Kenya","Bellary","Cheers","Rakshu_T","2003-12-11","25 days ago",517,308,615,115,"Female");
insert into social_media_user(user_id,username,email,u_password,full_name,date_of_birth,country,city,bio,profile_url,join_date,last_login,followers_count,following_count,posts_count,comments_count,gender)values(26,"Vignesh","vignesh@gamil.com","vignesh@038","Vignesh pai","2016-06-06","Azerbaijan","Shimoga","Grace","Vignesh_pai","2005-12-12","26 days ago",518,309,616,116,"male");
insert into social_media_user(user_id,username,email,u_password,full_name,date_of_birth,country,city,bio,profile_url,join_date,last_login,followers_count,following_count,posts_count,comments_count,gender)values(27,"Srinivas","srinivas@gamil.com","srinivas@354","Srinivas patil","2017-07-07","Kazakhstan","Haasan","Iconic","Srinivas_patil","2000-12-13","27 days ago",519,311,617,117,"male");
insert into social_media_user(user_id,username,email,u_password,full_name,date_of_birth,country,city,bio,profile_url,join_date,last_login,followers_count,following_count,posts_count,comments_count,gender)values(28,"Kruthi","kruthi@gamil.com","kruthi@754","Kruthi T","2018-08-08","Egypt","Kochi","Inspire","kruthi_t","2003-12-14","28 days ago",521,312,618,118,"Female");
insert into social_media_user(user_id,username,email,u_password,full_name,date_of_birth,country,city,bio,profile_url,join_date,last_login,followers_count,following_count,posts_count,comments_count,gender)values(29,"Ghanavi","ghanavi@gamil.com","ghanavi@9173","Ghanavi V","2019-09-09","Cameroon","Thrissur","Simplicity","ghanavi_v","2004-12-15","29 days ago",522,313,619,119,"Female");
insert into social_media_user(user_id,username,email,u_password,full_name,date_of_birth,country,city,bio,profile_url,join_date,last_login,followers_count,following_count,posts_count,comments_count,gender)values(30,"Mahantesh","maha@gamil.com","maha@0134","Mahantesh R","2020-10-10","Ethiopia","Kollam","Vibe","Mahi_r","2006-12-16","30 days ago",523,314,621,121,"male");

insert into social_media_user(user_id,username,email,u_password,full_name,date_of_birth,country,city,bio,profile_url,join_date,last_login,followers_count,following_count,posts_count,comments_count,gender)values(31,"Kiran","kiran@gamil.com","Kiran@931","Kiran Reddy","2001-03-30","Indonesia","Kannur","Energy","kiran_reddy","2015-01-31","31 days ago",524,315,622,122,"male");
insert into social_media_user(user_id,username,email,u_password,full_name,date_of_birth,country,city,bio,profile_url,join_date,last_login,followers_count,following_count,posts_count,comments_count,gender)values(32,"Venkat","venkat@gamil.com","venkat@844","Venkat Reddy","2002-03-31","Finland","Alappuzha","Groove","Venkat_Reddy","2016-02-01","32 days ago",525,316,623,123,"male");
insert into social_media_user(user_id,username,email,u_password,full_name,date_of_birth,country,city,bio,profile_url,join_date,last_login,followers_count,following_count,posts_count,comments_count,gender)values(33,"Vani","vani@gamil.com","vani@33","Vani K","2003-03-29","Norways","Kottayam","Rhythm","Vani_k","2017-03-31","33 days ago",526,317,624,124,"Female");
insert into social_media_user(user_id,username,email,u_password,full_name,date_of_birth,country,city,bio,profile_url,join_date,last_login,followers_count,following_count,posts_count,comments_count,gender)values(34,"Pavana","pavu@gamil.com","pavu@614","Pavana V","2004-04-18","Bermuda","Palakkad","Hype","Pavu_v","2019-12-31","34 days ago",527,318,625,125,"Female");
insert into social_media_user(user_id,username,email,u_password,full_name,date_of_birth,country,city,bio,profile_url,join_date,last_login,followers_count,following_count,posts_count,comments_count,gender)values(35,"Rajesh","raju@gamil.com","rajesh@546","Rajesh G","2005-03-29","Chile","Kasargod","Action","Rajesh_g","2023-02-21","35 days ago",319,992,626,126,"male");
insert into social_media_user(user_id,username,email,u_password,full_name,date_of_birth,country,city,bio,profile_url,join_date,last_login,followers_count,following_count,posts_count,comments_count,gender)values(36,"Devanth","deva@gamil.com","deva@45","Devanth B","2010-08-23","Panama","Varkala","Flow","Deva_B","2022-07-25","36 days ago",529,321,627,127,"male");
insert into social_media_user(user_id,username,email,u_password,full_name,date_of_birth,country,city,bio,profile_url,join_date,last_login,followers_count,following_count,posts_count,comments_count,gender)values(37,"Harish","hari@gamil.com","hari@901","Harish R","2006-03-25","Cyprus","Ponnani","Daring","Hari_r","2021-05-20","37 days ago",531,322,628,128,"male");
insert into social_media_user(user_id,username,email,u_password,full_name,date_of_birth,country,city,bio,profile_url,join_date,last_login,followers_count,following_count,posts_count,comments_count,gender)values(38,"Chetan","chetan@gamil.com","chetan@9241","Chetan M","2011-09-04","Peru","Vatkara","Bold","chetan_m","2020-02-22","38 days ago",532,323,629,129,"male");
insert into social_media_user(user_id,username,email,u_password,full_name,date_of_birth,country,city,bio,profile_url,join_date,last_login,followers_count,following_count,posts_count,comments_count,gender)values(39,"Dileep","dileep@gamil.com","dileep@45","Dileep M","2000-10-18","Turkey","Chennai","Lively","Dileep_m","2019-10-06","39 days ago",533,324,631,131,"male");
insert into social_media_user(user_id,username,email,u_password,full_name,date_of_birth,country,city,bio,profile_url,join_date,last_login,followers_count,following_count,posts_count,comments_count,gender)values(40,"Yeshwanth","yeshu@gamil.com","yeshu@0112","Yeshwanth Gowda","2000-11-20","Sweden","Madurai","Vibrant","Yeshu_gowda","2015-12-01","40 days ago",534,325,632,132,"male");

select * from social_media_user where user_id IN(1,2,3,4,5);

select * from social_media_user where user_id NOT IN(6,7,8,9,10);

SELECT * FROM social_media_user where user_id between 11 AND 15;

select * from social_media_user order by user_id desc;

SELECT INSTR('India', 'd');
SELECT INSTR('Mounika', 'n');
SELECT INSTR('Chitradurga', 'r');
SELECT INSTR('Munnar', 'u');
SELECT INSTR('Japan', 'p');

SELECT SUBSTR('Yeshwanth',2,3);
SELECT SUBSTR('Venkat Reddy',3,6);
SELECT SUBSTR('Rajesh',2,5);
SELECT SUBSTR('Germany',1,6);
SELECT SUBSTR('Mahantesh',4,8);

SELECT * FROM social_media_user where username like 'M%';
SELECT * FROM social_media_user where city like 'B%';
SELECT * FROM social_media_user where full_name like 'R%';
SELECT * FROM social_media_user where bio like 'C%';
SELECT * FROM social_media_user where profile_url like 'G%';



CREATE TABLE Travel (id INT not null unique, destination VARCHAR(100) not null unique, start_date varchar(50) not null unique, end_date varchar(50) not null unique, traveler_name VARCHAR(50) not null unique, traveler_age INT not null unique, traveler_email VARCHAR(100) not null unique, airline VARCHAR(50) not null unique, flight_number VARCHAR(50) not null unique, hotel_name VARCHAR(100) not null unique, hotel_address VARCHAR(200) unique, hotel_phone VARCHAR(50) unique,  travel_cost int unique, rental_car_company VARCHAR(50) unique, rental_car_model VARCHAR(50) unique, check_in_date varchar(50) default "15-july", check_out_date varchar(50) default "20-july", pickup_date varchar(50) default "14-july", room_type VARCHAR(50), return_date varchar(50));
select * from Travel;
insert into Travel(id,destination,start_date,end_date,traveler_name,traveler_age,traveler_email,airline,flight_number,hotel_name,hotel_address,hotel_phone,travel_cost,rental_car_company,rental_car_model,room_type,return_date)values(01,"Kolar","1-jan","2-jan","Mounika",11,"mouni@gmail.com","Aer Lingus","AM1","Quirk Hotel","Munnar","1569",1000,"Speedy","Ford Explorer","AC","21-jul");
insert into Travel(id,destination,start_date,end_date,traveler_name,traveler_age,traveler_email,airline,flight_number,hotel_name,hotel_address,hotel_phone,travel_cost,rental_car_company,rental_car_model,room_type,return_date)values(02,"KGF","3-jan","4-jan","Megha",12,"megha@gmail.com","Aeroflot","AC1","Blue Moon Hotel","KR Puram","1",2000,"Bon Voyage Car Rental","Toyota Corolla","Non_AC","02-jan");
insert into Travel(id,destination,start_date,end_date,traveler_name,traveler_age,traveler_email,airline,flight_number,hotel_name,hotel_address,hotel_phone,travel_cost,rental_car_company,rental_car_model,room_type,return_date)values(03,"Mulbagal","5-jan","6-jan","Sunil",13,"sunil@gmail.com","AirAsia","QK1","Whale Cave Inn","BTM","301",3000,"Elite Car Company","Volkswagen Jetta","Normal","03-feb");
insert into Travel(id,destination,start_date,end_date,traveler_name,traveler_age,traveler_email,airline,flight_number,hotel_name,hotel_address,hotel_phone,travel_cost,rental_car_company,rental_car_model,room_type,return_date)values(04,"Mysore","7-jan","8-jan","Mohan",14,"mohan@gmail.com","Air India","AM9","Hotel Jolly","MG Road","172",4000,"Fast Track","Chrysler 300","Business","04-mar");
insert into Travel(id,destination,start_date,end_date,traveler_name,traveler_age,traveler_email,airline,flight_number,hotel_name,hotel_address,hotel_phone,travel_cost,rental_car_company,rental_car_model,room_type,return_date)values(05,"Chikballapura","9-jan","10-jan","Sai",15,"sai@gmail.com","Alitalia","NZ1","Bedrock N Roll","Indiranagar","65",5000,"Allrounder Rentals","Ford Mustang Convertible","With_tv","05-apr");
insert into Travel(id,destination,start_date,end_date,traveler_name,traveler_age,traveler_email,airline,flight_number,hotel_name,hotel_address,hotel_phone,travel_cost,rental_car_company,rental_car_model,room_type,return_date)values(06,"Mandya","11-jan","12-jan","Suresh",16,"suri@gmail.com","American Airlines","TN1","Suprema Lodge","Halsur","1518",6000,"Purple Car Rental","Chevrolet Tahoe","AC","06-may");
insert into Travel(id,destination,start_date,end_date,traveler_name,traveler_age,traveler_email,airline,flight_number,hotel_name,hotel_address,hotel_phone,travel_cost,rental_car_company,rental_car_model,room_type,return_date)values(07,"Kerala","13-jan","14-jan","Chetan",17,"Chetan@gmail.com","Avianca","D71","SpinSurf Hotel","JP Nagar","689",7000,"Free Run","Ford Edge","Non_AC","07-jun");
insert into Travel(id,destination,start_date,end_date,traveler_name,traveler_age,traveler_email,airline,flight_number,hotel_name,hotel_address,hotel_phone,travel_cost,rental_car_company,rental_car_model,room_type,return_date)values(08,"Chennai","15-jan","16-jan","Samatha",18,"sam@gmail.com","Asiana Airlines","AS1","Fairview Hotel","Banashankari","209",8000,"All Set Rentals","Kia Soul","Normal","08-jul");
insert into Travel(id,destination,start_date,end_date,traveler_name,traveler_age,traveler_email,airline,flight_number,hotel_name,hotel_address,hotel_phone,travel_cost,rental_car_company,rental_car_model,room_type,return_date)values(09,"Siruseri","17-jan","18-jan","Yeshwanth",19,"yeshu@gmail.com","Air Transat","NH1","Bourbon Bliss","Rajajinagar","1593",9000,"Beta Car Hire","Toyota Camry","Single room","09-aug");
insert into Travel(id,destination,start_date,end_date,traveler_name,traveler_age,traveler_email,airline,flight_number,hotel_name,hotel_address,hotel_phone,travel_cost,rental_car_company,rental_car_model,room_type,return_date)values(10,"Coimbatore","19-jan","20-jan","Aishwarya",20,"aishu@gmail.com","Air New Zealand","AA1","Hotel Happy Springs","Mysore Road","695",10000,"Bold Arrivals","Mazda CX-5","Double room","10-sep");

insert into Travel(id,destination,start_date,end_date,traveler_name,traveler_age,traveler_email,airline,flight_number,hotel_name,hotel_address,hotel_phone,travel_cost,rental_car_company,rental_car_model,room_type,return_date)values(11,"Gadag","1-feb","2-feb","Rachana",21,"rachu@gmail.com","Belavia","CP1","Green Lushy Hotels","Kengeri","1953",11000,"The Wheel Deal","Nissan Armada","Triple room","11-oct");
insert into Travel(id,destination,start_date,end_date,traveler_name,traveler_age,traveler_email,airline,flight_number,hotel_name,hotel_address,hotel_phone,travel_cost,rental_car_company,rental_car_model,room_type,return_date)values(12,"Haaveri","3-feb","4-feb","Anusha",22,"anu@gmail.com","Blue Air","BG1","Soft Petal Hotel","Mahalaxmi","56",12000,"All Around Town Inc.","Nissan Quest","AC","12-nov");
insert into Travel(id,destination,start_date,end_date,traveler_name,traveler_age,traveler_email,airline,flight_number,hotel_name,hotel_address,hotel_phone,travel_cost,rental_car_company,rental_car_model,room_type,return_date)values(13,"Koppala","5-feb","6-feb","Bhavya",23,"bhavya@gmail.com","British Airways","CI1","Quick Stop Hotel","Mejestic","150",13000,"Rent a Go-Cart","Chevrolet Spark","Hollywood Twin","13-dec");
insert into Travel(id,destination,start_date,end_date,traveler_name,traveler_age,traveler_email,airline,flight_number,hotel_name,hotel_address,hotel_phone,travel_cost,rental_car_company,rental_car_model,room_type,return_date)values(14,"Bangalore","7-feb","8-feb","Shruthi",24,"shruthi@gmail.com","Brussels Airlines","DL1","Palace Hotel","Malleshwaranm","1397",14000,"Cheap Rides","Ford Ecosport","Queen Room","21-jan");
insert into Travel(id,destination,start_date,end_date,traveler_name,traveler_age,traveler_email,airline,flight_number,hotel_name,hotel_address,hotel_phone,travel_cost,rental_car_company,rental_car_model,room_type,return_date)values(15,"Nandhi hills","9-feb","10-feb","Priyanka",25,"priyanka@gmail.com","Bulgaria Air","D51","Sunset Plains Hotel","jaynagar","1619",15000,"Trip A Long Inc","GMC Yukon","Twin Room","22-feb");
insert into Travel(id,destination,start_date,end_date,traveler_name,traveler_age,traveler_email,airline,flight_number,hotel_name,hotel_address,hotel_phone,travel_cost,rental_car_company,rental_car_model,room_type,return_date)values(16,"Chikamagaluru","11-feb","12-feb","Rahul",26,"rahul@gmail.com","Bahamasair","LY1","Secluded Hill Hotel","Chickpet","36",16000,"Alternative Mobility","Chevrolet Cruz","King room","23-mar");
insert into Travel(id,destination,start_date,end_date,traveler_name,traveler_age,traveler_email,airline,flight_number,hotel_name,hotel_address,hotel_phone,travel_cost,rental_car_company,rental_car_model,room_type,return_date)values(17,"Gokarna","14-feb","13-feb","Sagar",27,"sagar@gmail.com","Bamboo Airways","EK1","Moss View Hotel","KR Market","1221",17000,"Able Car Rental","Jeep Compass","Studio","24-apr");
insert into Travel(id,destination,start_date,end_date,traveler_name,traveler_age,traveler_email,airline,flight_number,hotel_name,hotel_address,hotel_phone,travel_cost,rental_car_company,rental_car_model,room_type,return_date)values(18,"Murudeshwara","15-feb","16-feb","charan",28,"charan@gmail.com","Batik Air","EY1","The Gritty Palace","Malpe","1223",18000,"Coyote Car Rental","Nissan Altima","Accessible","25-may");
insert into Travel(id,destination,start_date,end_date,traveler_name,traveler_age,traveler_email,airline,flight_number,hotel_name,hotel_address,hotel_phone,travel_cost,rental_car_company,rental_car_model,room_type,return_date)values(19,"Goa","8-feb","17-feb","rajesh",29,"rajesh@gmail.com","Cathay Pacific","FX1","Red Velvet Inn","Udupi","1225",19000,"Your Travel Solution","Hyundai Santa Fe","Suite","26-jun");
insert into Travel(id,destination,start_date,end_date,traveler_name,traveler_age,traveler_email,airline,flight_number,hotel_name,hotel_address,hotel_phone,travel_cost,rental_car_company,rental_car_model,room_type,return_date)values(20,"Agra","19-feb","20-feb","Pavana",30,"pavu@gmail.com","Chair Airlines","AY1","Sizzling Inn","Dharmasthala","1227",20000,"The Way To Go Travel","Toyota Corola","Mini-suite","27-jul");

insert into Travel(id,destination,start_date,end_date,traveler_name,traveler_age,traveler_email,airline,flight_number,hotel_name,hotel_address,hotel_phone,travel_cost,rental_car_company,rental_car_model,room_type,return_date)values(21,"Hebbe fals","1-mar","2-mar","Manoj",31,"manoj@gmail.com","China","HA1","Hotel The Pie","Etthina bhuja","1333",21000,"The Road Ahead","Ford Focus","AC","28-aug");
insert into Travel(id,destination,start_date,end_date,traveler_name,traveler_age,traveler_email,airline,flight_number,hotel_name,hotel_address,hotel_phone,travel_cost,rental_car_company,rental_car_model,room_type,return_date)values(22,"Channaraya Pattana","3-mar","4-mar","Manohar",32,"mano@gmail.com","Cirrus Aviation","JL1","Mofo Cuzzi Inn","Sringeri","1445",22000,"Rent a Car and Go","Volkswagen Polo","Apartment style","29-sep");
insert into Travel(id,destination,start_date,end_date,traveler_name,traveler_age,traveler_email,airline,flight_number,hotel_name,hotel_address,hotel_phone,travel_cost,rental_car_company,rental_car_model,room_type,return_date)values(23,"Hampi","5-mar","6-mar","vignesh",33,"vignesh@gmail.com","City Airways","NU1","Clean Convenience","Karavali","1667",23000,"Get there fast","Audi Q3","Standard","30-oct");
insert into Travel(id,destination,start_date,end_date,traveler_name,traveler_age,traveler_email,airline,flight_number,hotel_name,hotel_address,hotel_phone,travel_cost,rental_car_company,rental_car_model,room_type,return_date)values(24,"Bidar","7-mar","8-mar","Surendra",34,"surendra@gmail.com","Civil UAVS","B61","Newhouse Hotel","Nagalyand","1969",24000,"Go Rent a Car","Nissan Rogue","Connecting","01-nov");
insert into Travel(id,destination,start_date,end_date,traveler_name,traveler_age,traveler_email,airline,flight_number,hotel_name,hotel_address,hotel_phone,travel_cost,rental_car_company,rental_car_model,room_type,return_date)values(25,"Dhavanagere","9-mar","10-mar","Kushi",35,"kushi@gmail.com","Colibri","LJ1","Ibis","Om beach","1335",25000,"Get It","Buick Encore","Presidential","02-dec");
insert into Travel(id,destination,start_date,end_date,traveler_name,traveler_age,traveler_email,airline,flight_number,hotel_name,hotel_address,hotel_phone,travel_cost,rental_car_company,rental_car_model,room_type,return_date)values(26,"DhoodSagar","11-mar","12-mar","Vishwa",36,"vishwa@gmail.com","Commuter","KE1","Fitzgerald Hotel","T-estate","1337",26000,"No Hassle Car Rental","Infiniti QX60","Deluxe","03-nov");
insert into Travel(id,destination,start_date,end_date,traveler_name,traveler_age,traveler_email,airline,flight_number,hotel_name,hotel_address,hotel_phone,travel_cost,rental_car_company,rental_car_model,room_type,return_date)values(27,"Coorg","13-mar","14-mar","Mahantesh",37,"Maha@gmail.com","Condor","LA1","Hilton Hotels","Madhurai","14345",27000,"Affordable Leasing","Tata Hatch","Super Deluxe","04-oct");
insert into Travel(id,destination,start_date,end_date,traveler_name,traveler_age,traveler_email,airline,flight_number,hotel_name,hotel_address,hotel_phone,travel_cost,rental_car_company,rental_car_model,room_type,return_date)values(28,"Hosur","15-mar","16-mar","Preethi",38,"preethi@gmail.com","Copa Airlines","LO1","Voyage Resort","Kanyakumari","1995",28000,"Rent Everything","Honda Sedan","Cabana","05-sep");
insert into Travel(id,destination,start_date,end_date,traveler_name,traveler_age,traveler_email,airline,flight_number,hotel_name,hotel_address,hotel_phone,travel_cost,rental_car_company,rental_car_model,room_type,return_date)values(29,"Velur","17-mar","18-mar","Keerthana",39,"keerthana@gmail.com","Corsair","LH1","Four Seasons","Madiwala","1999",29000,"Let’s Go Now","Mahindra SUVs","With Kitchen","06-aug");
insert into Travel(id,destination,start_date,end_date,traveler_name,traveler_age,traveler_email,airline,flight_number,hotel_name,hotel_address,hotel_phone,travel_cost,rental_car_company,rental_car_model,room_type,return_date)values(30,"Kuppam","19-mar","20-mar","Dileep",40,"dillep@gmail.com","CemAir","MH1","Aman Resorts","Atthibele","2000",30000,"King of the Road","Renault Hatch","Without-Kitchen","07-jul");

insert into Travel(id,destination,start_date,end_date,traveler_name,traveler_age,traveler_email,airline,flight_number,hotel_name,hotel_address,hotel_phone,travel_cost,rental_car_company,rental_car_model,room_type,return_date)values(31,"Bermuda","1-apr","2-apr","Anupama",41,"anupama@gmail.com","Denim","MM1","Ritz-Carlton Hotel","vijaynagara","2221",31000,"The No Frills Way To Drive","Volkswagen","Penthouse","08-jun");
insert into Travel(id,destination,start_date,end_date,traveler_name,traveler_age,traveler_email,airline,flight_number,hotel_name,hotel_address,hotel_phone,travel_cost,rental_car_company,rental_car_model,room_type,return_date)values(32,"USA","3-apr","4-apr","Jeevitha",42,"jeevitha@gmail.com","Donavia","QF1","The Better Hotel","Silk institute","2225",32000,"Go car","Skoda","Home-Stay","09-may");
insert into Travel(id,destination,start_date,end_date,traveler_name,traveler_age,traveler_email,airline,flight_number,hotel_name,hotel_address,hotel_phone,travel_cost,rental_car_company,rental_car_model,room_type,return_date)values(33,"Kedarnath","5-apr","6-apr","Aakash",43,"aakash@gmail.com","Druk Air","QR1","Hotel Fusion","nagasandra","2215",33000,"Getting Started Easily","MG Car","Floored","10-apr");
insert into Travel(id,destination,start_date,end_date,traveler_name,traveler_age,traveler_email,airline,flight_number,hotel_name,hotel_address,hotel_phone,travel_cost,rental_car_company,rental_car_model,room_type,return_date)values(34,"Manali","7-apr","8-apr","Poojitha",44,"poojitha@gmail.com","Daily Air","SK1","Hotel Vitality","Yelachenahalli","1290",34000,"Gas ‘N’ GO!","Citroen","AC","11-mar");
insert into Travel(id,destination,start_date,end_date,traveler_name,traveler_age,traveler_email,airline,flight_number,hotel_name,hotel_address,hotel_phone,travel_cost,rental_car_company,rental_car_model,room_type,return_date)values(35,"Tanjavur","9-apr","10-apr","Abhishek",45,"abhi@gmail.com","Defence","SQ1","Cable Car Hotel","Magadi","2345",35000,"Very Relaxing Ride","Creta","Non-AC","12-jul");
insert into Travel(id,destination,start_date,end_date,traveler_name,traveler_age,traveler_email,airline,flight_number,hotel_name,hotel_address,hotel_phone,travel_cost,rental_car_company,rental_car_model,room_type,return_date)values(36,"Hydrabad","11-apr","12-apr","Pallavi",46,"pallavi@gmail.com","DHL Air","BC1","Hotel Lemonade","Devaramane","2666",36000,"Fast Rent a car","Maruti Suzuki","Family","21-feb");
insert into Travel(id,destination,start_date,end_date,traveler_name,traveler_age,traveler_email,airline,flight_number,hotel_name,hotel_address,hotel_phone,travel_cost,rental_car_company,rental_car_model,room_type,return_date)values(37,"Gacchi bowli","13-apr","14-apr","Pavithra",47,"pavi@gmail.com","Dniproavia","WN1","Giggle Resort","Sharavathi","1222",37000,"A-1 Auto Rental","BMW","Conference","25-mar");
insert into Travel(id,destination,start_date,end_date,traveler_name,traveler_age,traveler_email,airline,flight_number,hotel_name,hotel_address,hotel_phone,travel_cost,rental_car_company,rental_car_model,room_type,return_date)values(38,"Norway","15-apr","16-apr","Rachitha",48,"rachitha@gmail.com","Egyptair","SG1","Ube Hotel","Honnavara","2228",38000,"Ace Car Rental","Audi","Luxury","03-jan");
insert into Travel(id,destination,start_date,end_date,traveler_name,traveler_age,traveler_email,airline,flight_number,hotel_name,hotel_address,hotel_phone,travel_cost,rental_car_company,rental_car_model,room_type,return_date)values(39,"Swizerland","17-apr","18-apr","Kavya",49,"kavya@gmail.com","Emirates Airline","NK1","5 Star Getaway","Halebidu","2668",39000,"Anoki Car Rental","Ertiga","Stay-room","4-jul");
insert into Travel(id,destination,start_date,end_date,traveler_name,traveler_age,traveler_email,airline,flight_number,hotel_name,hotel_address,hotel_phone,travel_cost,rental_car_company,rental_car_model,room_type,return_date)values(40,"Paris","19-apr","20-apr","Usha",50,"usha@gmail.com","Fly Jamaica","JX1","Great Gravity Hotel","Alapuza","4567",40000,"National Car Rents","Swift","Sunrrom","29-feb");

select * from Travel where id IN(1,2,3,4,5);

select * from Travel where id NOT IN(6,7,8,9,10);

SELECT * FROM Travel where id between 11 AND 15;

select * from Travel order by id asc;

SELECT INSTR('Swizerland', 'z');
SELECT INSTR('Mounika', 'n');
SELECT INSTR('Hotel Lemonade', 'L');
SELECT INSTR('Halebidu', 'e');

SELECT SUBSTR('Ritz-Carlton Hotel',2,3);
SELECT SUBSTR('Giggle Resort',3,6);
SELECT SUBSTR('Donavia',2,5);
SELECT SUBSTR('5 Star Getaway',1,6);

SELECT * FROM Travel where traveler_name like 'M%';
SELECT * FROM Travel where airline like 'A%';
SELECT * FROM Travel where hotel_name like 'W%';
SELECT * FROM Travel where travel_cost like '1%';
SELECT * FROM Travel where rental_car_company like 'E%';


CREATE TABLE Movies(id INT not null unique, title VARCHAR(100) not null unique, director VARCHAR(100) not null unique,release_year INT not null unique, no_of_songs int not null unique, duration_minutes INT not null unique, rating double not null unique, actor1 VARCHAR(100) not null unique, actor2 VARCHAR(100) not null unique, actor3 VARCHAR(100) not null unique,budget int unique, box_office_collection int unique, place VARCHAR(50) unique, movie_language VARCHAR(50) unique,cinematographer VARCHAR(100) unique, composer VARCHAR(100) default "manisharma", production_company VARCHAR(100) default "Allu", screenplay_writer VARCHAR(100) default "Megha", movie_ticket_cost int, poster_url VARCHAR(255));
select * from Movies;

insert into Movies(id,title,director,release_year,no_of_songs,duration_minutes,rating,actor1,actor2,actor3,budget,box_office_collection,place,movie_language,cinematographer,movie_ticket_cost,poster_url)values(01,"Googly","Srikanth",1991,1,100,1,"Ravi teja","Rohit","Sumanth",10000,100000,"Magadi","Kannada","Adurthi",100,"www.googly.com");
insert into Movies(id,title,director,release_year,no_of_songs,duration_minutes,rating,actor1,actor2,actor3,budget,box_office_collection,place,movie_language,cinematographer,movie_ticket_cost,poster_url)values(02,"Yuva","Aditya",1992,2,101,2,"Chiru","Megha","Akash",10001,100001,"Bommasandra","Telugu","Pavana",101,"www.yuva.com");
insert into Movies(id,title,director,release_year,no_of_songs,duration_minutes,rating,actor1,actor2,actor3,budget,box_office_collection,place,movie_language,cinematographer,movie_ticket_cost,poster_url)values(03,"Baahubali","SS Rajamouli",1993,3,102,3,"Mahesh Babu","Jr. NTR","Allu Arjun",10002,100002,"Bengaluru ","English","Roger ",102,"www.bahubali.com");
insert into Movies(id,title,director,release_year,no_of_songs,duration_minutes,rating,actor1,actor2,actor3,budget,box_office_collection,place,movie_language,cinematographer,movie_ticket_cost,poster_url)values(04,"Arjun Reddy ","Trivikram",1994,4,103,4,"Pawan Kalyan","Prabhas","Ram Charan",10003,100003,"Mysuru ","Spanish","Emmanuel ",103,"www.arjun.com");
insert into Movies(id,title,director,release_year,no_of_songs,duration_minutes,rating,actor1,actor2,actor3,budget,box_office_collection,place,movie_language,cinematographer,movie_ticket_cost,poster_url)values(05,"Rangasthalam","Puri Jagannadh",1995,5,104,5,"Nani","Vijay Deverakonda","Nagarjuna",10004,100004,"Hampi ","Mandarin ","Rajesj",104,"www.ranga.com");
insert into Movies(id,title,director,release_year,no_of_songs,duration_minutes,rating,actor1,actor2,actor3,budget,box_office_collection,place,movie_language,cinematographer,movie_ticket_cost,poster_url)values(06,"Jersey","Sukumar",1996,6,105,6,"Venkatesh","Naga Chaitanya","Balakrishna",10005,100005,"Coorg","Hindi","Chetan",105,"www.jersy.com");
insert into Movies(id,title,director,release_year,no_of_songs,duration_minutes,rating,actor1,actor2,actor3,budget,box_office_collection,place,movie_language,cinematographer,movie_ticket_cost,poster_url)values(07,"Ala Vaikunthapurramuloo","Vamsi",1997,7,106,7,"Rana Daggubati","Sharwanand","Nithiin",10006,100006,"Gokarna ","Arabic","Dileep",106,"www.ala.com");
insert into Movies(id,title,director,release_year,no_of_songs,duration_minutes,rating,actor1,actor2,actor3,budget,box_office_collection,place,movie_language,cinematographer,movie_ticket_cost,poster_url)values(08,"Eega","Boyapati",1998,8,107,8,"Varun Tej","Sai Dharam Tej","Sudheer Babu",10007,100007,"Belur","Portuguese","Sunil",107,"www.eega.com");
insert into Movies(id,title,director,release_year,no_of_songs,duration_minutes,rating,actor1,actor2,actor3,budget,box_office_collection,place,movie_language,cinematographer,movie_ticket_cost,poster_url)values(09,"Fidaa","Koratala",1999,9,108,9,"Adivi Sesh","Sree Leela","Bellamkonda Sreenivas",10008,100008,"Halebidu ","Bengali","Mohan",108,"www.fidaa.com");
insert into Movies(id,title,director,release_year,no_of_songs,duration_minutes,rating,actor1,actor2,actor3,budget,box_office_collection,place,movie_language,cinematographer,movie_ticket_cost,poster_url)values(10,"Srimanthudu","Krish",2000,10,109,10,"Nikhil Siddhartha","Raj Tarun","Vishwak Sen",10009,100009,"Shravanabelagola ","Russian","Suresh",109,"www.srimanthudu.com");

insert into Movies(id,title,director,release_year,no_of_songs,duration_minutes,rating,actor1,actor2,actor3,budget,box_office_collection,place,movie_language,cinematographer,movie_ticket_cost,poster_url)values(11,"Mahanati","Sreenu",2001,11,110,11,"Gopichand","Sundeep Kishan","Nara Rohit",10010,100010,"Jog Falls","Japanese","Kiran",110,"www.mahanati.com");
insert into Movies(id,title,director,release_year,no_of_songs,duration_minutes,rating,actor1,actor2,actor3,budget,box_office_collection,place,movie_language,cinematographer,movie_ticket_cost,poster_url)values(12,"Sarileru Neekevvaru","Harish",2002,12,111,12,"Vijay Sethupathi","Karthi","Suriya ",10011,100011,"Chikmagalur ","Punjabi","Mounika",111,"www.sarileru.com");
insert into Movies(id,title,director,release_year,no_of_songs,duration_minutes,rating,actor1,actor2,actor3,budget,box_office_collection,place,movie_language,cinematographer,movie_ticket_cost,poster_url)values(13,"Raja the Great","Maruthi",2003,13,112,13,"Naani","Akkineni Akhil","Srikanth",10012,100012,"Badami ","German","Megha",112,"www.raja.com");
insert into Movies(id,title,director,release_year,no_of_songs,duration_minutes,rating,actor1,actor2,actor3,budget,box_office_collection,place,movie_language,cinematographer,movie_ticket_cost,poster_url)values(14,"Geetha Govindam","Malineni",2004,14,113,14,"Navdeep","Rajasekhar","Tanish",10013,100013,"Aihole ","Javanese","Aishu",113,"www.geetha.com");
insert into Movies(id,title,director,release_year,no_of_songs,duration_minutes,rating,actor1,actor2,actor3,budget,box_office_collection,place,movie_language,cinematographer,movie_ticket_cost,poster_url)values(15,"Ala Modalaindi","Anil Ravipudi",2005,15,114,15,"Sai Srinivas Bellamkonda","Adivi Sesh","Puneeth Rajkumar",10014,100014,"Pattadakal","Wu Chinese","Rachana",114,"www.ala modalalindi.com");
insert into Movies(id,title,director,release_year,no_of_songs,duration_minutes,rating,actor1,actor2,actor3,budget,box_office_collection,place,movie_language,cinematographer,movie_ticket_cost,poster_url)values(16,"Nannaku Prematho","Hanu Raghavapudi",2006,16,115,16,"Yash","Darshan","Sudeep",10015,100015,"Srirangapatna ","Vietnamese","Bhavya",115,"www.nannaku.com");
insert into Movies(id,title,director,release_year,no_of_songs,duration_minutes,rating,actor1,actor2,actor3,budget,box_office_collection,place,movie_language,cinematographer,movie_ticket_cost,poster_url)values(17,"Attarintiki Daredi ","K. Raghavendra Rao",2007,17,116,17,"Upendra","Ganesh","Shivrajkumar",10016,100016,"Udupi ","Marathi","Priyanka",116,"www.daaredi.com");
insert into Movies(id,title,director,release_year,no_of_songs,duration_minutes,rating,actor1,actor2,actor3,budget,box_office_collection,place,movie_language,cinematographer,movie_ticket_cost,poster_url)values(18,"Ranga","Chandrasekhar",2008,18,117,18,"Vijay Raghavendra","Diganth","Dhruva Sarja",10017,100017,"Karwar","French","shruthi",117,"www.ranga.com");
insert into Movies(id,title,director,release_year,no_of_songs,duration_minutes,rating,actor1,actor2,actor3,budget,box_office_collection,place,movie_language,cinematographer,movie_ticket_cost,poster_url)values(19,"F2","Surender",2009,19,118,19,"Ramesh ","Jaggesh","Sharan",10018,100018,"Murudeshwar ","Korean","Kushi",118,"www.f2.com");
insert into Movies(id,title,director,release_year,no_of_songs,duration_minutes,rating,actor1,actor2,actor3,budget,box_office_collection,place,movie_language,cinematographer,movie_ticket_cost,poster_url)values(20,"Nenu Local","Nandini",2010,20,119,20,"Chiranjeevi Sarja","Rakshit Shetty","Prem",10019,100019,"Bandipur","Tamil","Poojitha",119,"www.nenulocal.com");

insert into Movies(id,title,director,release_year,no_of_songs,duration_minutes,rating,actor1,actor2,actor3,budget,box_office_collection,place,movie_language,cinematographer,movie_ticket_cost,poster_url)values(21,"K.G.F: Chapter 1","Pawan",2011,21,120,21,"Srinagar Kitty","Vijay Prakash","Prakash Raj",10020,100020,"Nagarhole","Italian","Preethi",120,"www.kgf1.com");
insert into Movies(id,title,director,release_year,no_of_songs,duration_minutes,rating,actor1,actor2,actor3,budget,box_office_collection,place,movie_language,cinematographer,movie_ticket_cost,poster_url)values(22,"Ugramm","Yogaraj",2012,22,121,22,"Sumanth R","Rishab Shetty","Prajwal Devaraj",10021,100021,"Agumbe ","Urdu","Priyanka chopra",121,"www.ugramm.com");
insert into Movies(id,title,director,release_year,no_of_songs,duration_minutes,rating,actor1,actor2,actor3,budget,box_office_collection,place,movie_language,cinematographer,movie_ticket_cost,poster_url)values(23,"Kirik Party","Suri",2013,23,122,23,"Anant Nag","Raghavendra Rajkumar","Komal Kumar",10022,100022,"Bijapur ","Turkish","Samatha",122,"www.kirik.com");
insert into Movies(id,title,director,release_year,no_of_songs,duration_minutes,rating,actor1,actor2,actor3,budget,box_office_collection,place,movie_language,cinematographer,movie_ticket_cost,poster_url)values(24,"Raajakumara","Rakshit",2014,24,123,24,"Shiva Rajkumar","Naveen Krishna","Duniya Vijay",10023,100023,"Dandeli ","Ukrainian","Yeshwanth",123,"www.raajakumara.com");
insert into Movies(id,title,director,release_year,no_of_songs,duration_minutes,rating,actor1,actor2,actor3,budget,box_office_collection,place,movie_language,cinematographer,movie_ticket_cost,poster_url)values(25,"RangiTaranga","Rishab ",2015,25,124,25,"Ravi Shankar","Chikkanna","Sharmiela Mandre",10024,100024,"Shivanasamudra","Gujarati","Abhishek",124,"www.rangi.com");
insert into Movies(id,title,director,release_year,no_of_songs,duration_minutes,rating,actor1,actor2,actor3,budget,box_office_collection,place,movie_language,cinematographer,movie_ticket_cost,poster_url)values(26,"Lucia","Upendra",2016,26,125,26,"Ragini Dwivedi","Hariprriya","Bhavana ",10025,100025,"Chitradurga ","Polish","Pallavi",125,"www.lucia.com");
insert into Movies(id,title,director,release_year,no_of_songs,duration_minutes,rating,actor1,actor2,actor3,budget,box_office_collection,place,movie_language,cinematographer,movie_ticket_cost,poster_url)values(27,"Ulidavaru Kandante","Prashanth ",2017,27,126,27,"Aindrita ","Rachita ","Amulya",10026,100026,"Hassan ","Malayalam","Ghanavi",126,"www.ulidavavru.com");
insert into Movies(id,title,director,release_year,no_of_songs,duration_minutes,rating,actor1,actor2,actor3,budget,box_office_collection,place,movie_language,cinematographer,movie_ticket_cost,poster_url)values(28,"Ranna","Dwarakish",2018,28,127,28,"Sruthi","Shanvi","Manvitha ",10027,100027,"Sakleshpur","Oriya ","Anusha",127,"www.ranna.com");
insert into Movies(id,title,director,release_year,no_of_songs,duration_minutes,rating,actor1,actor2,actor3,budget,box_office_collection,place,movie_language,cinematographer,movie_ticket_cost,poster_url)values(29,"Mungaru Male","Nagathihalli ",2019,29,128,29,"Amitabh Bachchan","Shah Rukh Khan","Salman ",10028,100028,"Yana ","Romanian","Arpitha",128,"www.mungarumale.com");
insert into Movies(id,title,director,release_year,no_of_songs,duration_minutes,rating,actor1,actor2,actor3,budget,box_office_collection,place,movie_language,cinematographer,movie_ticket_cost,poster_url)values(30,"Kavaludaari","Chandru",2020,30,129,30,"Aamir ","Akshay Kumar","Ranbir",10029,100029,"Biligiriranga","Bhojpuri","Varshini",129,"www.kavalidaari.com");

insert into Movies(id,title,director,release_year,no_of_songs,duration_minutes,rating,actor1,actor2,actor3,budget,box_office_collection,place,movie_language,cinematographer,movie_ticket_cost,poster_url)values(31,"Kendasampige","Indrajit",1981,31,130,31,"Ranveer ","Hrithik","Ajay Devgn",10030,100030,"Sirsi ","Azerbaijani","Pavithra",130,"www.kenda.com");
insert into Movies(id,title,director,release_year,no_of_songs,duration_minutes,rating,actor1,actor2,actor3,budget,box_office_collection,place,movie_language,cinematographer,movie_ticket_cost,poster_url)values(32,"Dia","Shashank",1982,32,131,32,"Varun Dhawan","Sidharth Malhotra","Shahid Kapoor",10031,100031,"Tumkur ","Farsi ","Rachan",131,"www.dia.com");
insert into Movies(id,title,director,release_year,no_of_songs,duration_minutes,rating,actor1,actor2,actor3,budget,box_office_collection,place,movie_language,cinematographer,movie_ticket_cost,poster_url)values(33,"Aa Dinagalu","Giriraj ",1983,33,132,33,"Saif Ali Khan","Irrfan Khan","Nawazuddin ",10032,100032,"Haveri ","Dutch","Maha",132,"www.aadinagalu.com");
insert into Movies(id,title,director,release_year,no_of_songs,duration_minutes,rating,actor1,actor2,actor3,budget,box_office_collection,place,movie_language,cinematographer,movie_ticket_cost,poster_url)values(34,"KGF: Chapter 2","Dayal",1984,34,133,34,"Ayushmann ","Vicky Kaushal","Kartik Aaryan",10033,100033,"Melukote ","Pashto","Deva",133,"www.kgf2.com");
insert into Movies(id,title,director,release_year,no_of_songs,duration_minutes,rating,actor1,actor2,actor3,budget,box_office_collection,place,movie_language,cinematographer,movie_ticket_cost,poster_url)values(35,"Pogaru","Suni",1985,35,134,35,"Rajkummar Rao","John Abraham","Abhishek Bachchan",10034,100034,"Gulbarga","Thai","Manoj",134,"www.pogaru.com");
insert into Movies(id,title,director,release_year,no_of_songs,duration_minutes,rating,actor1,actor2,actor3,budget,box_office_collection,place,movie_language,cinematographer,movie_ticket_cost,poster_url)values(36,"Love Mocktail","Dinesh",1986,36,135,36,"Farhan Akhtar","Arjun Kapoor","Tiger ",10035,100035,"Bidar ","Serbo","Manohar",135,"www.love.com");
insert into Movies(id,title,director,release_year,no_of_songs,duration_minutes,rating,actor1,actor2,actor3,budget,box_office_collection,place,movie_language,cinematographer,movie_ticket_cost,poster_url)values(37,"Mayabazar 2016","Guru",1987,37,136,37,"Emraan ","Sushant ","Aditya ",10036,100036,"Kudremukh ","Swahili","Rahul",136,"www.mayabazar.com");
insert into Movies(id,title,director,release_year,no_of_songs,duration_minutes,rating,actor1,actor2,actor3,budget,box_office_collection,place,movie_language,cinematographer,movie_ticket_cost,poster_url)values(38,"Avane Srimannarayana","Mahesh",1988,38,137,38,"Sidhant ","Chaturvedi","Samantha",10037,100037,"Sringeri ","Yoruba","Vignesh",137,"www.avane.com");
insert into Movies(id,title,director,release_year,no_of_songs,duration_minutes,rating,actor1,actor2,actor3,budget,box_office_collection,place,movie_language,cinematographer,movie_ticket_cost,poster_url)values(39,"Ondu Motteya Kathe","Jayathirtha",1989,39,138,39,"Anushka ","Tamannaah ","Kajal ",10038,100038,"Somnathpur ","Uzbek","Sai",138,"www.ondu.com");
insert into Movies(id,title,director,release_year,no_of_songs,duration_minutes,rating,actor1,actor2,actor3,budget,box_office_collection,place,movie_language,cinematographer,movie_ticket_cost,poster_url)values(40,"Kanthara","Dinakar ",1990,40,139,40,"Rakul ","Nayanthara","Hansika ",10039,100039,"Talakad ","Sindhi","Sandeep",139,"www.kanthara.com");

select * from Movies where id IN(1,2,3,4,5);

select * from Movies where id NOT IN(6,7,8,9,10);

SELECT * FROM Movies where id between 11 AND 15;

select * from Movies order by id desc;

SELECT INSTR('SS Rajamouli', 'o');
SELECT INSTR('Kendasampige', 's');
SELECT INSTR('Avane Srimannarayana', 'n');
SELECT INSTR('Jayathirtha', 'i');
SELECT INSTR('Hariprriya', 'y');

/*SELECT INSTR(b_name, 'a')from bank_info; */

SELECT SUBSTR('Shivanasamudra',2,7);
SELECT SUBSTR('Nawazuddin',3,6);
SELECT SUBSTR('Sidharth Malhotra',2,8);
SELECT SUBSTR('Kudremukh',1,6);
SELECT SUBSTR('Nayanthara',3,6);

SELECT * FROM movies where director like 'D%';
SELECT * FROM movies where actor1 like 'R%';
SELECT * FROM movies where duration_minutes like '1%';
SELECT * FROM movies where title like 'G%';
SELECT * FROM movies where cinematographer like 'Y%';

/* check - it should be applied only for numeric data - to limit tha range*/
/*create table resort(id int unique, r_name varchar(30) not null, price int, acres int, check(price>=5000 and acres>=30));
select * from resort;
insert into resort values(1,'tejas',5000,30);
insert into resort values(2,'sharan',6000,40);
desc resort; 

Primary Key: identify the data if any of the values are not null and unique it won't insert the data.
Primary key by default it will contain not null and unique constraint.
Each table should have only one primary kay but we can apply primary key to multiple columns.
parent table

create table forest(id int primary key, f_name varchar(30), f_location varchar(30)); 
insert into forest values(1,'Bandipur','CRnagar'); 
insert into forest values(2,'bhadra','Smg'); 

create table covid_info(id int , patient_name varchar(30), c_dose int, primary key(patient name, c_dose));
insert into covid_info values(1,'swarna',2);
insert into covid_info values(2,'keerthana',3);
insert into covid_info values(3,'keerthana',5); it will get inserted, combination of patient_name n c_dose should not be same

composite primary key - we will apply primary key to multiple columns.

foreign key: relationship between two tables. it refers to primary key of another table.
constraint
child table
The values present in the primary key the same values should present in the foreign key.
it will accept duplicate values.alter

create table marriage_info(m_id int primary key, m_type varchar(30), no_of_guests int, m_loc varchar(30));
select * from marriage_info;
insert into marriage_info values(201,'Arrange',500,'leelapalace');
insert into marriage_info values(202,'OdiHogi',5,'Temple');
insert into marriage_info values(203,'Register',10,'RegisterOffice');

create table divorce_info(id int, m_id int, reason varchar(50), d_loc varchar(20), foreign key(m_id) refrences marriage_info(m_id));
select * from divorce_info;
insert into divorce_info values(1,201,'tvRemote','mane'); 
insert into divorce_info values(1,202,'dowry','panchayat'); 
We cann't update or delete primary kay column or table
First we have to update or delete from foreign key table or column.
*/

CREATE TABLE Bank_info (
    Account_Number INT PRIMARY KEY,
    Account_Holder_Name VARCHAR(100) NOT NULL,
    Account_Type VARCHAR(50) default 'Savings Account',
    Bank_Name VARCHAR(100) unique,
    Bank_Branch VARCHAR(100) not null unique,
    Account_Balance DECIMAL(12, 2),
    check (Account_Balance>=1000.00)
);
Select * from Bank_info;

insert into Bank_info(Account_Number, Account_Holder_Name, Bank_Name, Bank_Branch, Account_Balance)values(01,'Megha','SBI','Sunderpalya',1500.00);
insert into Bank_info(Account_Number, Account_Holder_Name, Bank_Name, Bank_Branch, Account_Balance)values(02,'Mounika','Canara','Rajajinagar',20000.00);
insert into Bank_info(Account_Number, Account_Holder_Name, Bank_Name, Bank_Branch, Account_Balance)values(03,'Pavana','HDFC','Banashankari',25000.00);
insert into Bank_info(Account_Number, Account_Holder_Name, Bank_Name, Bank_Branch, Account_Balance)values(04,'Vani',null,'Jayanagar',2000.00);
insert into Bank_info(Account_Number, Account_Holder_Name, Bank_Name, Bank_Branch, Account_Balance)values(05,'Sunil','RBI','Indiranagar',5000.00);
insert into Bank_info(Account_Number, Account_Holder_Name, Bank_Name, Bank_Branch, Account_Balance)values(06,'Mohan','PNB','Mejestic',1500.00);
insert into Bank_info(Account_Number, Account_Holder_Name, Bank_Name, Bank_Branch, Account_Balance)values(07,'Kiran','Bank of Baroda','Bangarpet',29000.00);
insert into Bank_info(Account_Number, Account_Holder_Name, Bank_Name, Bank_Branch, Account_Balance)values(08,'Anaga','Union Bank of India','Kolar',45000.00);
insert into Bank_info(Account_Number, Account_Holder_Name, Bank_Name, Bank_Branch, Account_Balance)values(09,'Keerthi','Bank of India','Hoskote',3900.00);
insert into Bank_info(Account_Number, Account_Holder_Name, Bank_Name, Bank_Branch, Account_Balance)values(10,'Suresh','Central Bank of India','MG Road',4800.00);

insert into Bank_info(Account_Number, Account_Holder_Name, Bank_Name, Bank_Branch, Account_Balance)values(11,'Rajesh','ICICI','Halsur',4700.00);
insert into Bank_info(Account_Number, Account_Holder_Name, Bank_Name, Bank_Branch, Account_Balance)values(12,'Pallavi','Axis','JP Nagar',41800.00);
insert into Bank_info(Account_Number, Account_Holder_Name, Bank_Name, Bank_Branch, Account_Balance)values(13,'Abhishek','Kotak Mahindra Bank','Magadi',8800.00);
insert into Bank_info(Account_Number, Account_Holder_Name, Bank_Name, Bank_Branch, Account_Balance)values(14,'Yeshwanth','IndusInd Bank','Nagasandra',57700.00);
insert into Bank_info(Account_Number, Account_Holder_Name, Bank_Name, Bank_Branch, Account_Balance)values(15,'Samatha','IDBI Bank','Silk Institute',52000.00);
insert into Bank_info(Account_Number, Account_Holder_Name, Bank_Name, Bank_Branch, Account_Balance)values(16,'Bhaskar','Indian Bank','KR Puram',49000.00);
insert into Bank_info(Account_Number, Account_Holder_Name, Bank_Name, Bank_Branch, Account_Balance)values(17,'Rachana','UCO Bank','Marathalli',72000.00);
insert into Bank_info(Account_Number, Account_Holder_Name, Bank_Name, Bank_Branch, Account_Balance)values(18,'Aishwarya','Andhra Bank','Electronic City',61000.00);
insert into Bank_info(Account_Number, Account_Holder_Name, Bank_Name, Bank_Branch, Account_Balance)values(19,'Priyanka','Syndicate Bank','TC Palya',39000.00);
insert into Bank_info(Account_Number, Account_Holder_Name, Bank_Name, Bank_Branch, Account_Balance)values(20,'Bharath','Corporation Bank ','WhiteField',21000.00);
select avg Account_Balance from bank_info;

create table product_information(p_id int primary key, Account_Number int, p_name varchar(50) unique, p_category varchar(50) not null, stock_quantity int default 10, price decimal(10, 2), check(price<=50000.00), foreign key(Account_Number) references Bank_info(Account_Number));
select * from product_information;

insert into product_information(p_id, Account_Number, p_name,p_category,price)values(101,01,'SmartPhone','Electronics',20000.00);
insert into product_information(p_id, Account_Number, p_name,p_category,price)values(102,02,'Running Shoes','Foot Ware',21000.00);
insert into product_information(p_id, Account_Number, p_name,p_category,price)values(103,03,'Washing Machine','Appliance',30000.00);
insert into product_information(p_id, Account_Number, p_name,p_category,price)values(104,04,'Chocolate Bar','Food',40000.00);
insert into product_information(p_id, Account_Number, p_name,p_category,price)values(105,05,'Laptop','Electronics',11000.00);
insert into product_information(p_id, Account_Number, p_name,p_category,price)values(106,06,'Bycycle','Sporting Goods',15000.00);
insert into product_information(p_id, Account_Number, p_name,p_category,price)values(107,07,'T-Shirt','Clothing',18000.00);
insert into product_information(p_id, Account_Number, p_name,p_category,price)values(108,08,'Coffee Maker','Appliance',19000.00);
insert into product_information(p_id, Account_Number, p_name,p_category,price)values(109,09,'Back Pack','Bag',22000.00);
insert into product_information(p_id, Account_Number, p_name,p_category,price)values(110,10,'Digital Camera','Electronics',23000.00);

insert into product_information(p_id, Account_Number, p_name,p_category,price)values(111,11,'Soap','Skin Care',24000.00);
insert into product_information(p_id, Account_Number, p_name,p_category,price)values(112,12,'Hair Dryer','Beauty',25000.00);
insert into product_information(p_id, Account_Number, p_name,p_category,price)values(113,13,'Book Shelf','Furniture',26000.00);
insert into product_information(p_id, Account_Number, p_name,p_category,price)values(114,14,'Pet Food','Animal care',27000.00);
insert into product_information(p_id, Account_Number, p_name,p_category,price)values(115,15,'Office Chair','Furniture',28000.00);
insert into product_information(p_id, Account_Number, p_name,p_category,price)values(116,16,'Tv','Electronics',29000.00);
insert into product_information(p_id, Account_Number, p_name,p_category,price)values(117,17,'Vaccum Cleaner','Appliances',31000.00);
insert into product_information(p_id, Account_Number, p_name,p_category,price)values(118,18,'Tennis Racket','Sporting Goods',32000.00);
insert into product_information(p_id, Account_Number, p_name,p_category,price)values(119,19,'Sunglasses','Fashion',33000.00);
insert into product_information(p_id, Account_Number, p_name,p_category,price)values(120,20,'Printer','Electronics',34000.00);

create table highway_info(h_id int primary key, h_name varchar(50) unique, num_lanes int default 8, construction_year int not null, cost int, check(cost>=50));
select * from highway_info;

insert into highway_info(h_id,h_name,construction_year,cost)values(01,'National Highway 44',2000,55);
insert into highway_info(h_id,h_name,construction_year,cost)values(02,'National Highway 48',2002,60);
insert into highway_info(h_id,h_name,construction_year,cost)values(03,'National Highway 75',2004,52);
insert into highway_info(h_id,h_name,construction_year,cost)values(04,'Outer Ring Road',2006,58);
insert into highway_info(h_id,h_name,construction_year,cost)values(05,'NICE Road ',2008,62);
insert into highway_info(h_id,h_name,construction_year,cost)values(06,'Bannerghatta Road',2010,65);
insert into highway_info(h_id,h_name,construction_year,cost)values(07,'Hosur Road ',2012,70);
insert into highway_info(h_id,h_name,construction_year,cost)values(08,'Tumkur Road',2014,72);
insert into highway_info(h_id,h_name,construction_year,cost)values(09,'Old Madras Road',2016,75);
insert into highway_info(h_id,h_name,construction_year,cost)values(10,'Sarjapur Road',2018,77);

insert into highway_info values(11,'Mysore Road',5,1999,50);

create table bloodbank_info(id int primary key, b_name varchar(50) unique, address varchar(50) not null, donor_name varchar(50), blood_group varchar(10) default 'B -ve', price int, check(price>=1000));
select * from bloodbank_info;

insert into bloodbank_info(id,b_name,address,donor_name,price)values(01,'Rotary blood bank','Mejestic','Rachana',1500);
insert into bloodbank_info(id,b_name,address,donor_name,price)values(02,'Sanjivini blood bank','Magadi','Pavan',2000);
insert into bloodbank_info(id,b_name,address,donor_name,price)values(03,'Sribalaji blood bank','Rajajinagar','Malathi',2500);
insert into bloodbank_info(id,b_name,address,donor_name,price)values(04,'Arohi blood bank','vijaynagar','Rahul',3000);
insert into bloodbank_info(id,b_name,address,donor_name,price)values(05,'Srikar blood bank','MG Road','Megha',3500);
insert into bloodbank_info(id,b_name,address,donor_name,price)values(06,'Govt blood bank','Kolar','Sunil',4000);
insert into bloodbank_info(id,b_name,address,donor_name,price)values(07,'Indian blood bank','Banashankari','Sunitha',4500);
insert into bloodbank_info(id,b_name,address,donor_name,price)values(08,'SSKM blood bank','Nagasandra','Prakruthi',5000);
insert into bloodbank_info(id,b_name,address,donor_name,price)values(09,'Chandana blood bank','Silk institute','Anjali',5500);
insert into bloodbank_info(id,b_name,address,donor_name,price)values(10,'Athar blood bank','Malleshwaram','Mohan',6000);
insert into bloodbank_info values(11,'Anaga blood bank','Halsur','Pavithra','O +ve',6500);

/*Second highest number from table */
SELECT max(price) FROM bloodbank_info WHERE price NOT IN (SELECT Max(price) FROM bloodbank_info); 
SELECT max(price) FROM bloodbank_info WHERE price < (SELECT Max(price) FROM bloodbank_info); 
/* 
aggregate functions:
1) COUNT:  select count(*) as  count from bank_info;
select count(id) as  count from bank_info;
2) sum: select sum(balance) from bank_info;

3) max: selcet max(total_customers) from bank_info;
selct b_name, max(total_customers) from bank info;

4) min: select b_name, min(balance) from bank_info;

5) avg: select avg(balance from bank_info);

duplicate table
create table bank_info_dup as select * from bank_info;
select * from bank_info_dup;

views:
 
*/
