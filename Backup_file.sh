Source_dir="/workspaces/-Cron_jobs/file.db"
Backup_dir="/workspaces/-Cron_jobs/backups"
TIMESTAPM=$(date +%F-%H-%M)
Backup_name="documentS-$TIMESTAPM.tar.gz"

touch $Source_dir
mkdi "$Backup_dir"
tar -czf "$Backup_dir/$Backup_name" "$Source_dir"


# === CLEANUP OLD BACKUPS (older than 7 days) ===
find "$BACKUP_DIR" -type f -name "*.tar.gz" -mtime +7 -delete

echo "Backup completed: $Backup_dir/$Backup_name"
