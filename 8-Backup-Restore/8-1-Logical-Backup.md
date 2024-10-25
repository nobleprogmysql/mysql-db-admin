## MYSQLDUMP

### HELP
```sh
man mysqldump
```

### BACKUP TABLE
```sh
mysqldump world city > city.sql
mysqldump world continents --where="cid=5" > south_america.sql
mysqldump world --ignore-table=world.continents > no_continent_world.sql
```

### BACKUP DATABASE
```sh
mysqldump world > world.sql
```

### BACKUP MULTIPLE DATABASES
```sh
mysqldump --databases world --single-transaction > world_backup.sql
```

### BACKUP ALL DATABASES
```sh
mysqldump --all-databases > all_databases.sql
```
