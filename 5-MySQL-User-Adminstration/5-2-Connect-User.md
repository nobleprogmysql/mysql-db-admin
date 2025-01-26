### Login New user
```sql
mysql -u john -p
select user();

status;
```



### Mysql shell
```sql
snap install mysql-shell

mysqlsh --help
mysqlsh --sql --uri=john@localhost:3306/mysql
show databases;
select user();
status;
```