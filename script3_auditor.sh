#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Asmit Upadhyay

# List of important directories [cite: 152]
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "Starting Directory Audit..."
echo "------------------------------------------"

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        # Extract permissions and owner [cite: 157]
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        echo "Directory: $DIR"
        echo "Perms/Owner: $PERMS"
        echo "Disk Usage : $SIZE"
        echo "-------------------"
    else
        echo "$DIR does not exist on this system."
    fi
done

# VLC specific config check [cite: 162]
VLC_CONFIG="$HOME/.config/vlc"
if [ -d "$VLC_CONFIG" ]; then
    echo "VLC Configuration found at $VLC_CONFIG"
    ls -ld "$VLC_CONFIG" | awk '{print "Permissions: ", $1}'
fi
