
### Xtrabackup setup
```sh
https://www.percona.com/downloads#percona-xtrabackup
curl -o percona.deb https://downloads.percona.com/downloads/Percona-XtraBackup-8.0/Percona-XtraBackup-8.0.35-31/binary/debian/noble/x86_64/percona-xtrabackup-80_8.0.35-31-1.noble_amd64.deb?_gl=1*ahqgfa*_gcl_au*NjE2MjU4NTc1LjE3Mjg4MjA4MTM.
dpkg -i percona.deb
sudo apt install fix-broken

```

### Xtrabackup backup
```sh
cd /var
mkdir –m777 mysqldatabases
cd mysqldatabases
mkdir -m777 backups

xtrabackup --backup --target-dir=/var/mysqldatabases/backups/full

ls /var/mysqldatabases/backups/full
```

### Xtrabackup restore
```sh
xtrabackup --prepare --datadir=/var/lib/mysql  --target-dir=/var/mysqldatabases/backups/full

sudo systemctl status mysql
sudo systemctl stop mysql

ll /var/lib/mysql
rm -rf /var/lib/mysql/*

xtrabackup --copy-back --datadir=/var/lib/mysql --target-dir=/var/mysqldatabases/backups/full 

chown -R mysql:mysql /var/lib/mysql

systemctl start mysql
```