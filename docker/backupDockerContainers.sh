#!/bin/bash

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