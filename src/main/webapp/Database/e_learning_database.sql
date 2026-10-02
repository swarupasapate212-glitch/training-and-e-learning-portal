
create database e_learning_portal;

use e_learning_portal;

create table signup 
(
 u_id int auto_increment primary key,
 email nvarchar(200),
 contact bigint(12),
 password nvarchar(200)
);

create table register
(
 r_id int auto_increment primary key,
name char(100),
qualification nvarchar(200),
contact bigint(12),
address nvarchar(200),
email nvarchar(200)
);

create table admin_signup 
(
 a_id int auto_increment primary key,
 email nvarchar(200),
 contact bigint(12),
 password nvarchar(200)
);

create table admin_login 
(
 al_id int auto_increment primary key,
 email nvarchar(200),
 password nvarchar(200)
);
create table course 
(
 c_id int auto_increment primary key,
 course_name char(200),
 information nvarchar(300),
 image nvarchar(200)
 
);
managecoursecreate table  
(
 am_id int auto_increment primary key,
 course_name char(200),
 information nvarchar(300),
 price bigint(20),
 image nvarchar(200),
 video nvarchar(200)
);

create table managecontent
(
 a_id int auto_increment primary key,
 course_name char(200),
 information nvarchar(300)
);

create table admin_quiz
(
 a_id int auto_increment primary key,
 course_name char(200),
 quation_no bigint(200),
 quation_name nvarchar(200),
 option_1 nvarchar(200),
 option_2 nvarchar(200),
 option_3 nvarchar(200),
 option_4 nvarchar(200),
 correct_answar nvarchar(200)
);



create table user_feedback
(
 f_id int auto_increment primary key,
 useful nvarchar(200),
 instructor nvarchar(200),
 email nvarchar(50)
);
create table admin_managecontent
(
 a_id int auto_increment primary key,
course_name nvarchar(200),
syllabus_name nvarchar(200)
);
create table user_feedback
(
 f_id int auto_increment primary key,
 useful nvarchar(200),
 instructor nvarchar(200)
);

create table admin_manageuser
(
 u_id int auto_increment primary key,
 Name_of_trainer nvarchar(200),
 Type_of_training nvarchar(200),
 Email nvarchar(200)
);
 
create table contact_us
(
 ct_id int auto_increment primary key,
 Name nvarchar(200),
 Email nvarchar(200),
 subject_contact nvarchar(200),
  message nvarchar(200)
);

create table course_buy_detail
(
 b_id int auto_increment primary key,
 course_id int,
 course_name nvarchar(200),
 course_price nvarchar(200),
 course_buy_date nvarchar(200),
 course_image nvarchar(200),
 status nvarchar(200),
 user_id nvarchar(200),
 email nvarchar(200),
 user_contact bigint(12)
);

create table payment
(
 p_id int auto_increment primary key,
 card_holder_Name nvarchar(200),
 card_number nvarchar(200),
 expiry_date nvarchar(200),
  cvv nvarchar(200),
 amount nvarchar(200)
);

create table payment
(
 p_id int auto_increment primary key,
 user_id nvarchar(200),
 card_holder_Name nvarchar(200),
 card_number nvarchar(200),
 expiry_date nvarchar(200),
  cvv nvarchar(200),
 amount nvarchar(200)
);

create table Leacture
(
 L_id int auto_increment primary key,
course_name nvarchar(200),
 lecture_name nvarchar(200),
video nvarchar(200)

);

create database job_portal;


create table add_table
(
 L_id int auto_increment primary key,
course_name nvarchar(200)
);
create database edit_video_web;
use edit_video_web;
create table contact_as 
(
 id int auto_increment primary key,
 name nvarchar(50),
 email nvarchar(200),
 message nvarchar(500)
);



