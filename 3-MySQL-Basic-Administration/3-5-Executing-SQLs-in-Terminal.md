syntax:
    mysql -e "select @@hostname, @@version"
    mysql -e "select @@hostname, @@version; select user,host from mysql.user; select @@hostname, now();"