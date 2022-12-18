#!/bin/bash

# This script will backups all current Docker containers and send the output file to a folder of your choosing. Please remember to update the `BACKUP_DIR` VAR to your own folder.

NOW=$(date +"%Y-%m-%d")
BACKUP_DIR="/path/to/backup/directory"
mkdir -p $BACKUP_DIR
CONTAINERS=$(docker ps -aq)
for CONTAINER in $CONTAINERS
do
    NAME=$(docker inspect --format='{{.Name}}' $CONTAINER)
    NAME=${NAME:1}
    BACKUP_FILE="$BACKUP_DIR/$NAME-$NOW.tar"
    docker export $CONTAINER | gzip > $BACKUP_FILE
done