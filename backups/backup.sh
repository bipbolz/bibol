#!/bin/bash

DATE=$(date +"%Y-%m-%d_%H-%M")
BACKUP_DIR=/home/bibol/tugas-manager/backups
CONTAINER_NAME=mysql-db
DB_NAME=tugas
DB_USER=root
DB_PASSWORD=root

docker exec $CONTAINER_NAME /usr/bin/mysqldump -u$DB_USER -p$DB_PASSWORD $DB_NAME > $BACKUP_DIR/db_backup_$DATE.sql
