#!/bin/bash 
# Script 3: Disk and Permission Auditor 
# Purpose: Audits directory space, ownership, and security permissions. 
# Define a list of important system directories to audit 
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp") 
echo "Starting Directory Security Audit ..." 
echo "__________________________________________________" 
# Loop through each directory in the array 
for DIR in "${DIRS[@]}"; do 
if [ -d "$DIR" ]; then 
# Use ls -ld and awk to extract file mode, owner, and group 
PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}') 
# Use du (disk usage) to get the size in a readable format (MB/GB) 
SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1) 
echo "DIR: $DIR | Perms/Owner: $PERMS | Size: $SIZE" 
else 
# Alert if a specified directory does not exist 
echo "Notice: $DIR does not exist on this host." 
fi 
done 
echo "__________________________________________________" 
# Audit the specific configuration path for MySQL 
CONF_PATH="/etc/mysql" 
if [ -d "$CONF_PATH" ]; then 
echo "MYSQL CONFIG AUDIT:" 
# Display detailed permissions for the config folder 
ls -ld "$CONF_PATH" | awk '{print "Path: " $9 " | Security: " $1 " | Owner: " $3}' 
else 
echo "Warning: MySQL config directory not found at $CONF_PATH." 
fi