create database if not exists reviews;

use reviews;
drop table if exists comments;
drop table if exists posts;
drop table if exists memberdata;




create table memberdata ( 
member_id int (11) not null auto_increment, 
username varchar (50) not null,
first_name varchar (40) not null,
last_name varchar (40) not null,
email varchar (60) not null,
password varchar (128) not null,
primary key (member_id),
);


create table posts (
post_id int (11) not null,
member_id int (11) not null auto_increment,
date_time datetime default current_timestamp, 
input varchar (300) not null,
primary key (post_id),
foreign key (member_id) references memberdata(members_id),
);



create table comments (
comments_id int (11) not null,
post_id int(11) not null,
member_id int (11) not null auto_increment, 
comment varchar (300),
date_time datetime default current_timestamp,
primary key (comments_id),
foreign Key (post_id) references posts (post_id),
foreign Key (member_id) references memberdata(member_id)
);
