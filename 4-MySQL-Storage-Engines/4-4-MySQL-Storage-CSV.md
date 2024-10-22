## MYSQL CSV STORAGE ENGINE

### CREATE TABLE IN CSV STORAGE ENGINE
```sql
use world;
CREATE TABLE continents ( cid int NOT NULL, cname VARCHAR(25) NOT NULL) ENGINE=CSV;
SELECT * FROM continents;
```

### INSERT DATA INTO CSV TABLE
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
SELECT TABLE_NAME,TABLE_TYPE,ENGINE,TABLE_ROWS,CREATE_TIME FROM INFORMATION_SCHEMA.TABLES WHERE ENGINE='CSV';
```

### OBSERVE THE CSV TABLE
```sql
use world;
show tables;
SELECT * FROM continents;

sudo ls /var/lib/mysql/world
sudo file /var/lib/mysql/world/continents.CSV
cat /var/lib/mysql/world/continents.CSV
```