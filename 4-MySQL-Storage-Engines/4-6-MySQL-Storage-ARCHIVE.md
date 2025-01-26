## MYSQL ARCHIVE STORAGE ENGINE

### CREATE TABLE IN ARCHIVE STORAGE ENGINE
```sql
use world;
CREATE TABLE continents ( cid int NOT NULL, cname VARCHAR(25) NOT NULL) ENGINE=ARCHIVE;
SELECT * FROM continents;
```

### INSERT DATA INTO ARCHIVE TABLE
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
SELECT TABLE_NAME,TABLE_TYPE,ENGINE,TABLE_ROWS,CREATE_TIME FROM INFORMATION_SCHEMA.TABLES WHERE ENGINE='ARCHIVE';
```

### OBSERVE THE ARCHIVE TABLE
```sql
use world;
show tables;
SELECT * FROM continents;

create index idx_cname on continents(cname);
delete from continents where cid=4;

sudo ls /var/lib/mysql/world
```