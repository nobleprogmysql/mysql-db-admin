

## CREATING MYSQL USERS/ACCOUNTS

### GET HELP
```sql
mysql>help create user
```

### CREATE DBA USER
```sql
mysql>CREATE USER IF NOT EXISTS john IDENTIFIED BY 'Mysql@123' PASSWORD EXPIRE NEVER ACCOUNT UNLOCK;
```

### GRANT PERMISSIONS
```sql
mysql>GRANT ALL PRIVILEGES ON *.* TO john WITH GRANT OPTION;
```

### FLUSH PRIVILEGES  
```sql
FLUSH PRIVILEGES;
```


### To be able to login using mysql-workbench
```sql
ALTER USER 'root'@'localhost' IDENTIFIED WITH caching_sha2_password BY 'Mysql@123';
```

### MySql workbench installation steps
```sh
sudo su
wget https://dev.mysql.com/get/Downloads/MySQLGUITools/mysql-workbench-community_8.0.40-1ubuntu24.04_amd64.deb
dpkg -i mysql-workbench-community_8.0.40-1ubuntu24.04_amd64.deb
sudo apt --fix-broken install
apt get update
sudo apt --fix-broken install
```


