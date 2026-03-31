#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Asmit Upadhyay

PACKAGE="vlc"

echo "Searching for $PACKAGE installation..."

# Check if package is installed [cite: 135]
if dpkg -l | grep -qw "$PACKAGE"; then
    echo "[STATUS] $PACKAGE is installed."
    # Show version and license info [cite: 139]
    apt show $PACKAGE 2>/dev/null | grep -E 'Version|Homepage|Download-Size'
else
    echo "[STATUS] $PACKAGE is NOT installed."
fi

echo "------------------------------------------"

# Case statement for philosophy note [cite: 141]
case $PACKAGE in
    vlc)
        echo "Philosophy: VLC is a free and open-source, cross-platform multimedia player developed by the VideoLAN project. It represents the freedom to play any media format without proprietary restrictions." [cite: 24, 40]
        ;;
    *)
        echo "Philosophy: A critical component of the open-source ecosystem."
        ;;
esac
