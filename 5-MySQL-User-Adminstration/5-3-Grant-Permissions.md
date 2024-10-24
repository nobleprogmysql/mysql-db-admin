
### Password Expire
```sql
CREATE USER Dave IDENTIFIED BY 'MySql@123' PASSWORD EXPIRE;

ALTER USER Dave IDENTIFIED BY 'Mysql@1234';
```

### Grant
```sql
GRANT ALL SELECT, INSERT,UPDATE,DELETE ON world.continents TO Dave WITH GRANT OPTION;
show databses;
```