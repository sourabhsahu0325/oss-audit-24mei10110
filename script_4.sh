#!/bin/bash 
# Script 4: Log File Analyzer 
# Usage: ./script4.sh [logfile] [keyword] 
# Purpose: Counts keyword occurrences in a file using a while-read loop. 
# Assign arguments to variables 
LOGFILE=$1 
KEYWORD=${2:-"error"} # Defaults to 'error' if no second argument is passed 
COUNT=0 
# --- Safety Check (Prevents terminal exit if 'sourced') --- 
if [ -z "$LOGFILE" ]; then 
echo "Usage: $0 [path_to_file] [keyword]" 
[[ $_ != $0 ]] && return 1 || exit 1 
fi 
# Verify the file is accessible 
if [ ! -f "$LOGFILE" ]; then 
echo "Error: Cannot open '$LOGFILE'. Verify the path and permissions." 
[[ $_ != $0 ]] && return 1 || exit 1 
fi 
# --- Wait-Loop (if file is empty) --- 
while [ ! -s "$LOGFILE" ]; do 
echo "File is empty. Waiting 5 seconds for system activity..."
sleep 5 
done 
# --- Analysis Loop --- 
echo "Scanning for '$KEYWORD' in $LOGFILE..." 
while IFS= read -r LINE; do 
if echo "$LINE" | grep -iq "$KEYWORD"; then 
COUNT=$((COUNT + 1)) 
fi 
done < "$LOGFILE" 
echo "__________________________________________________" 
echo "Keyword '$KEYWORD' found $COUNT times." 
echo "Last 5 entries matching the keyword:" 
grep -i "$KEYWORD" "$LOGFILE" | tail -n 5