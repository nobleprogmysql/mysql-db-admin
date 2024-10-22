Downlaoding world-db.zip file 
Unzip the world-db file and execute world.sql with mysql client program
wget https://downloads.mysql.com/docs/world-db.zip

ls
unzip world-db.zip

cd world-db

mysql < world.sql


show databases;

use world;
show tables;

select * from country limit 5;