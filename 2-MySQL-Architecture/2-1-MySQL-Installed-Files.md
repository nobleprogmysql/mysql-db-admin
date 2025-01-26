## MySQL installed Files

Locations
```sh
Data dir: /var/lib/mysql
Error log file: /var/log/mysql/error.log
Mysql Config file: /etc/mysql/my.cnf

MySQL programs: ls /usr/bin | grep mysql

```

MySQL under systemd
```sh
systemctl status mysql.service
press q to exit
```


MySQL shell commands 
```sh
help
quit 
status
system
use
source
edit

system vi server.sql 
select @@hostname,@@version;
To save and exit: ESC :wq! ENTER
source server.sql

```

MySQL sock file
```sh
sock file location: /var/run/mysqld/mysqld.sock
sock lock file location: /var/run/mysqld/mysqld.sock.lock

cd /var/run/mysqld/
sudo rm -rf mysqld.sock
sudo rm -rf mysqld.sock.lock

systemctl status mysql
systemctl restart mysql
```


MySQL global variables
```sh
show global variables;
show global variables like 'server_id';
select @@max_connections;

SET GLOBAL max_connections = 300;

MySQL Variables documentation: https://dev.mysql.com/doc/refman/8.0/en/innodb-parameters.html
```

MySQL session variables
```sh
show session variables;
select @@sql_mode;
set session sql_mode = 'ONLY_FULL_GROUP_BY';
```
MySQL show coomands
```sh
show databases;
show tables from mysql;
show processlist;
```

MySQL connections
```sh
use mysql;
select user,host from user;
```
