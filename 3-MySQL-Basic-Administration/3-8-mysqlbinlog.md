mysql

show binary logs;

create database example;
drop database example;

sudo mysqlbinlog /var/lib/mysql/binlog.REPLACE_LATEST_ONE > events.log

grep -i DROP events.log