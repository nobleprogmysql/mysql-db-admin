## MySQL installed Files

Locations
```sh
Data dir: /var/lib/mysql
Error log file: /var/log/mysql/error.log
Mysql Config file: /etc/mysql/my.cnf

MySQL programs: /usr/bin

```

MySQL under systemd
```sh
systemctl status mysql.service

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

```

MySQL sock file
```sh
sock file location: /var/run/mysqld/mysqld.sock
sock lock file location: /var/run/mysqld/mysqld.sock.lock
```


MySQL global variables
```sh
show global variables;
show global variables like 'server_id';
select @@max_connections;

MySQL Variables documentation: https://dev.mysql.com/doc/refman/8.0/en/innodb-parameters.html
```

MySQL session variables
```sh
show session variables;
select @@sql_mode;
```
MySQL show coomands
```sh
show databases;
show processlist;
```

MySQL connections
```sh
use mysql;
select user,host from user;
```
