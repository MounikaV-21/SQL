CREATE DATABASE july_08;
USE july_08;

CREATE TABLE sales_info(id int , first_name varchar(255), last_name varchar(255), sup_id int, cat_id int, quantity_per_unit varchar(255), unit_price int, in_stocks int, on_order int, reorder_level int, discontinued int);
select * from sales_info;
ALTER TABLE sales_info ADD COLUMN (address varchar(255), phone_number bigint, city varchar(255), country varchar(255), pin_code int);

Alter TABLE sales_info DROP COLUMN cat_id;
Alter TABLE sales_info DROP COLUMN quantity_per_unit;

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
update olympic_info set o_year = 2018 where olympic_id = 02;
update olympic_info set o_year = 2007 where olympic_id = 03;
update olympic_info set o_result = 'Win' where olympic_id = 04;
update olympic_info set participated = 'No' where olympic_id = 05;
update olympic_info set g_location = 'USA' where olympic_id = 06;
update olympic_info set g_location = 'Canada' where olympic_id = 07;
update olympic_info set g_location = 'Berlin' where olympic_id = 08;
update olympic_info set g_location = 'USA' where olympic_id = 09;
update olympic_info set g_location = 'Japan' where olympic_id = 10;
select * from olympic_info;

delete from olympic_info where olympic_id = 20;


ddl: CREATE, ALTER ,DROP, TRUNCATE.
DML: INSERT, SELECT, UPDATE, DELETE.
TCL: COMMIT, ROLLBACK.
AND,OR,
SELECT * FROM olympic_info;

UPDATE olympic_info SET olympic_games_list = 'CRIC' 
where olympic_id = 2 and olympic_games_list = 'Golf';

update olympic_info SET olympic_games_list = 'Wrestling',
olympic_event_venue = 'Munich'
where olympic_id = 4;

update olympic_info SET olympic_games_list = 'Wrestling'
where olympic_id = 4 or olympic_held_year = 2004; 

IN:Avoid multiple use of OR Condition.

SELECT * FROM olympic_info where olympic_id = 2 OR olympic_id = 4
OR olympic_id = 5 OR olympic_games_list = 'CRIC';

select * from olympic_info where olympic_id IN(2,4,5,6);
UPDATE olympic_info SET olympic_games_list = 'BOXING' where olympic_id
in(3,4,5);

delete from olympic_info where olympic_id NOT in(4,5,6);

NOT IN:
select * from olympic_info where olympic_id NOT IN(2,4,5,6);

BETWEEN:
SELECT * FROM olympic_info where olympic_id between 4 AND 7;
SELECT * FROM olympic_info where olympic_held_year between 2003 AND 2006;

LIKE:PATTERN MATCHING:
% : WILL MATCH ANY STRING OF ANY LENGTH.
SELECT * FROM olympic_info;
SELECT * FROM olympic_info where olympic_games_list like 'C%';
SELECT * FROM olympic_info where olympic_games_list like '%l%g';

INSTR:INSTRING
'BANGALORE'

SELECT INSTR('BANGALORE', 'A');
SELECT * FROM olympic_info;
SELECT olympic_event_venue,INSTR(olympic_event_venue, 'a') AS pos 
FROM olympic_info;
AS  : USED FOR ALIAS NAME(FOR COLUMN, FOR TABLES).
substr:substring
'XWORKZODC'
substr(string, startposition, noofcharacters to return)
SELECT SUBSTR('XWORKZODC',4,3);
SELECT olympic_held_date,SUBSTR(olympic_held_date,3,7) as sub FROM olympic_info;

SELECT * FROM olympic_info;

SELECT * FROM olympic_info_dup2;

CREATE TABLE olympic_info_dup AS SELECT * FROM olympic_info;
CREATE TABLE olympic_info_dup2 AS SELECT olympic_event_day,olympic_id FROM olympic_info;





LTRIM: LEFT REMOVE: LEADING SPACES

SELECT LTRIM(s_name) from stu_info;

RTRIM: RIGHT REMOVE : TRAILING SPACES.

SELECT s_name,LENGTH(s_name) from stu_info;

select rtrim(s_name) from stu_info;

SELECT LTRIM(RTRIM(s_name)) from stu_info;
CONSTRAINTS:RESTRICT THE TYPE OF DATA WHILE INSERTIMG THE DATA INTO TABLE.

WHILE CREATING THE TABLE.

1)NOT NULL: 

2)UNIQUE:
desc stu_info;

3) DEFAULT: 

CREATE TABLE stu_info(id int not null unique, s_name varchar(30) unique, 
s_loc varchar(30) default 'BNG');

INSERT INTO stu_info values(1,'abc','MYS');
INSERT INTO stu_info values(1,'ab','DHR');




INSERT INTO stu_info (id,s_name) values (1,'cde');


SELECT * FROM stu_info;
desc stu_Info;

task:
CREATE 1 TABLE WITH 10 COLUMNS APPLY NOT NULL AND UNIQUE TO 5 COLUMNS 
AND UNIQUE CONSTRAINTS 
TO 3 COLUMNS DEFAULT FOR 2 COLUMNS.

TASK: FOR NEXT WEEK 
CREATE 3 TABLE WITH 20 COLUMNS(EACH TABLE 20 COLUMNS).
APPLY NOT NULL UNIQUE FOR 10 COLUMNS
UNIQUE FOR 5 COLUMNS
DEFAULT FOR 3 COLUMNS.
INSERT 40 DATA INTO EACH TABLE.
FETCH DATA USING (IN FOR 5 COLUMNS, NOT INFOR 5 COLUMNS, 
BETWEEN FOR 5 COLUMNS, ORDER BY FOR 5 COLUMNS,
INSTR FOR 5 COLUMNS, SUBSTR FOR 5 COLUMNS,LIKE FOR 5 COLUMNS).

create table social_media_user(user_id int not null unique, username varchar(50) not null unique, email varchar(50) not null unique, u_password varchar (50) not null unique, full_name varchar(50) not null unique, date_of_birth date not null unique, country varchar(50) not null unique, city varchar(50) not null unique, bio varchar(50) not null unique, profile_url varchar(50) not null unique, join_date date unique, last_login varchar(50) unique, followers_count int unique, following_count int unique, posts_count int unique, likes_count int, comments_count int, gender varchar(50));
















