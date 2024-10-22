
STEP 1. To check mysql installation
```sh
dpkg -l | grep mysql
```

STEP 2. Uninstall MySQL
```sh
sudo apt-get remove --purge *mysql\*
sudo apt-get autoremove
sudo apt-get autoclean
```

STEP 3. Delete mysql user and remove mysql config files
```sh
rm -rf /var/lib/mysql/
```

STEP 4. Verification, for netstat install net-tools first  (apt install net-tools)
```sh
pidof mysql
netstat -ntlp | grep 3306 
```