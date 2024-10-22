drop table continents;
create table continents (cid int NOT NULL, cname varchar(26) NOT NULL) ENGINE=MyISAM;
show table status like 'continents'\G

INSERT INTO continents(cid,cname) 
VALUES
 (1,'Asia'),
 (2,'Africa'),
 (3,'Europe'),
 (4,'North America'),
 (5,'South America'),
 (6,'Australia'),
 (7,'Antarctica');


 alter table continents engine='InnoDB';