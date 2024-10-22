
-- Create staff.txt file and create 2 tab delmeted rows 
vi staff.txt


-- Run mysqlimport program
mysqlimport --columns=fname,lname,title,isActive employees --delete /var/lib/mysql-files/staff.txt 

--mysqlcheck
mysqlcheck employees staff 

--mysqlshow 
mysqlshow employees staff fname

----MySQL timezone data
ls /usr/share/zoneinfo
mysql_tzinfo_to_sql /usr/share/zoneinfo | mysql mysql