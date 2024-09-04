# mysql-backup-and-upload-to-server
This bash script takes the mysql backup and upload to another server.

Install sshpass
``` bash
sudo apt-get install sshpass
```

Create a cron job (Every day at 2 A.M.)
```bash
0 2 * * * /path/to/mysql_backup.sh >> /path/to/backup.log 2>&1
```
