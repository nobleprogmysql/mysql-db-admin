use employees;
create table if not exists staff (id int not null auto_increment primary key, fname varchar(255) not null, lname varchar(255) not null, title varchar(50) null, isActive char(1) not null default 'Y');