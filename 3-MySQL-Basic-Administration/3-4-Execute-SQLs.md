1. Using source filename.sql

--Create file 
cat employees.sql (paste below content into file and save the file)

use employees;
create table if not exists staff (id int not null auto_increment primary key, fname varchar(255) not null, lname varchar(255) not null, title varchar(50) null, isActive char(1) not null default 'Y');

--Execute sql file
source employees.sql

--Verify table created 
show tables from employees;

2. using mysql client program
mysql -uroot -p employees < employees.sql

3. Bash script
--create bash script
vi employees.sh 
#!/bin/bash
mysql --host=localhost employees < $1

--change permission to execute
chmod u+x employees.sh

-- run bash script
bash employees.sh employees.sql

4. cat file.sql | mysql