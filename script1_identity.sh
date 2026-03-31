#!/bin/bash
# Script 1: System Identity Report
# Author: Asmit Upadhyay
# Course: Open Source Software

# --- Variables [cite: 105] ---
STUDENT_NAME="Asmit Upadhyay"
SOFTWARE_CHOICE="VLC Media Player"

# --- System info gathering [cite: 109] ---
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DATE_TIME=$(date '+%d %B %Y, %T')
DISTRO=$(grep "PRETTY_NAME" /etc/os-release | cut -d'=' -f2 | tr -d '"')

# --- Display [cite: 113] ---
echo "=========================================="
echo "          The Open Source Audit           "
echo "=========================================="
echo "Student Name: $STUDENT_NAME"
echo "Software    : $SOFTWARE_CHOICE"
echo "------------------------------------------"
echo "OS Distro   : $DISTRO"
echo "Kernel      : $KERNEL"
echo "User        : $USER_NAME"
echo "Home Dir    : $HOME"
echo "Uptime      : $UPTIME"
echo "Current Date: $DATE_TIME"
echo "------------------------------------------"
echo "OS License  : This system runs on the Linux Kernel (GPL v2)."
echo "=========================================="
