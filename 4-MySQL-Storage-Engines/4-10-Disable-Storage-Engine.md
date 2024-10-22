show variables like 'disabled_storage_engines';

vi /etc/mysql/mysql.conf.d/mysqld.cnf
disabled_storage_engines="MyISAM,BLACKHOLE,MEMORY"

systemctl restart mysql

create table continents (cid int NOT NULL, cname varchar(26) NOT NULL) ENGINE=MyISAM;