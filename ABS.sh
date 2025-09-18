#!/bin/bash
echo "Automatic Backup Script"
echo "---------------------------"

# Variables
Backup_DIR="/mnt/c/Users/DELL/Desktop/Shell_Scripting_Basic_Projects/backups"
TimeStamp=$(date +"%Y-%m-%d_%H-%M-%S")
BackUpFile="backup_$TimeStamp.tar.gz"
LogFile="$Backup_DIR/backup.log"

# Make sure backup directory exists
mkdir -p "$Backup_DIR"

echo "[$(date +"%Y-%m-%d %H:%M:%S")] - Starting Backup..."

# Create tar.gz archive of your files
tar -cvzf "$Backup_DIR/$BackUpFile" backupFile1.sh backupFile.py ABS.sh

# Log the backup
echo "[$(date +"%Y-%m-%d %H:%M:%S")] Backup created: $BackUpFile" >> "$LogFile"

echo "Backup completed. File saved to $Backup_DIR/$BackUpFile"

