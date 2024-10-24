## MYSQL CONFIGURATION

### GET HELP
```sql
mysql --verbose --help
mysql --verbose --help | less

pres q to quit
```

### ADD OPTION IN MY.CNF FILE
```sh
sudo cat /etc/mysql/my.cnf 
sudo vi /etc/mysql/mysql.con.d/mysqld.cnf
server-id = 10
sudo systemctl stop mysql.service
sudo systemctl start mysql.service
```

### MOVE DATA DIRECTORY
```sh
sudo su
sudo systemctl stop mysql
sudo mkdir /var/lib/mysql/prod
cd /var/lib/mysql
sudo mv * prod/
sudo vi /etc/mysql/mysql.conf.d/mysqld.cnf
datadir = /var/lib/mysql/prod
sudo systemctl start mysql

mysql
show variables like 'datadir';
```

### BINARY LOG FILES
```sql
SHOW BINARY LOGS;
SHOW BINLOG EVENTS IN 'binlog.000030';
PURGE BINARY LOGS TO 'binlog.000030';
```

### DISABLE BINARY LOGGING
```sh
sudo vi /etc/mysql/mysql.con.d/mysqld.cnf
disable-log-bin

systemctl restart mysql
mysql
show binary logs;

cd /var/lib/mysql/prod
rm -f binlog.*
```

### ENABLE BINARY LOGGING
```sh
sudo mkdir -p /var/log/mysql/binlogs
sudo chown -R mysql:mysql /var/log/mysql

sudo vi /etc/mysql/mysql.con.d/mysqld.cnf
log-bin = /var/log/mysql/binlogs/prod-binlog
log-bin-index = /var/log/mysql/binlogs/prod-binlog.index

systemctl restart mysql

mysql
show variables like 'log_bin';
show variables like 'log_bin_index';
show variables like 'binlog_expire_logs_seconds';

ls -ltr /var/log/mysql/binlogs
```