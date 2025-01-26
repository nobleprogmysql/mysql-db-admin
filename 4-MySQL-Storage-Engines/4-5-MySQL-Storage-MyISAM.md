## MYSQL MyISAM STORAGE ENGINE

### CREATE TABLE IN MyISAM STORAGE ENGINE
```sql
use world;
CREATE TABLE continents ( cid int NOT NULL, cname VARCHAR(25) NOT NULL) ENGINE=MyISAM;
SELECT * FROM continents;
```

### INSERT DATA INTO MyISAM TABLE
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
SELECT TABLE_NAME,TABLE_TYPE,ENGINE,TABLE_ROWS,CREATE_TIME FROM INFORMATION_SCHEMA.TABLES WHERE ENGINE='MyISAM';
```

### OBSERVE THE MyISAM TABLE
```sql
use world;
show tables;
SELECT * FROM continents;

START TRANSACTION;
UPDATE continents SET cname='ant' WHERE cid=7;
ROLLBACK;

show warnings;
```