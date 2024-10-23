mysql -u john -p
select user();

status;


--Mysql shell
snap install mysql-sehll
mysqlsh --help

mysqlsh --sql --uri=john@localhost:3306/mysql
show databases;
select user();
status;