select User,Host,Plugin,password_expired, account_locked from mysql.user;

ALTER USER Dave ACCOUNT LOCK;

exit and login try again;