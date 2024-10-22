## MYSQL InnoDB STORAGE ENGINE

### CREATE TABLE IN InnoDB STORAGE ENGINE
```sql
use world;
CREATE TABLE continents ( cid int NOT NULL, cname VARCHAR(25) NOT NULL) ENGINE=InnoDB;
SELECT * FROM continents;
```

### INSERT DATA INTO InnoDB TABLE
```sql
INSERT INTO continents(cid,cname) 
VALUES
 (1,'Asia'),
 (2,'Africa'),
 (3,'Europe'),
 (4,'North America'),
 (5,'South America'),
 (6,'Australia'),
 (7,'Antarctica');
```

### GET TABLE INFORMATION FROM INFORMATION_SCHEMA
```sql
SELECT TABLE_NAME,TABLE_TYPE,ENGINE,TABLE_ROWS,CREATE_TIME FROM INFORMATION_SCHEMA.TABLES WHERE ENGINE='InnoDB' and table_name = 'continents';
```

### OBSERVE THE InnoDB TABLE
```sql
use world;
show tables;
SELECT * FROM continents;


START TRANSACTION;
UPDATE continents set cname='ant' where cid=7;
select * from continents;
ROLLBACK;
select * from continents;

create index idx_cname on continents(cname);

--Terminal A
START TRANSACTION;
update continents set cname='ant' where cid=7;
select * from continents;

--Terminal B
delete from continents where cid=7;

--Terminal A
commit;


```