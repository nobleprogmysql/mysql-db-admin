
### Account Lock/Unlock
```sql
select User,Host,Plugin,password_expired, account_locked from mysql.user;

ALTER USER Dave ACCOUNT LOCK;

ALTER USER Dave ACCOUNT UNLOCK;

```