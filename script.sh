#!/bin/bash

# MySQL credentials
USER="your_mysql_user"
PASSWORD="your_mysql_password"
HOST="localhost"

# Backup destination
BACKUP_DIR="/path/to/backup/directory"
BACKUP_NAME="mysql_backup_$(date +\%F).sql"

# Remote server details
REMOTE_USER="remote_user"
REMOTE_PASSWORD="remote_password"
REMOTE_HOST="remote_host_ip_or_domain"
REMOTE_DIR="/path/to/remote/directory"

# Create a backup
mysqldump -u $USER -p$PASSWORD -h $HOST --all-databases > $BACKUP_DIR/$BACKUP_NAME

# Upload the backup to the remote server using sshpass
sshpass -p "$REMOTE_PASSWORD" scp $BACKUP_DIR/$BACKUP_NAME $REMOTE_USER@$REMOTE_HOST:$REMOTE_DIR

# Optional: remove local backup after upload
# rm $BACKUP_DIR/$BACKUP_NAME
