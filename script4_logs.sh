#!/bin/bash
# Script 4: Log File Analyzer
# Author: Asmit Upadhyay
# Usage: ./script4_logs.sh /path/to/logfile keyword

LOGFILE=${1:-"/var/log/syslog"}
KEYWORD=${2:-"error"}
COUNT=0

if [ ! -f "$LOGFILE" ]; then
    echo "Error: File $LOGFILE not found." [cite: 176]
    exit 1
fi

echo "Scanning $LOGFILE for '$KEYWORD'..."

# While loop to read line by line [cite: 177, 178]
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1)) [cite: 181]
    fi
done < "$LOGFILE"

echo "Total occurrences of '$KEYWORD': $COUNT" [cite: 183]
echo "Showing last 3 matches:"
grep -i "$KEYWORD" "$LOGFILE" | tail -n 3
