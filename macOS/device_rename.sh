#!/bin/bash
# This script renames the computer and the local hostname on macOS.

SERIAL_NUMBER=$(system_profiler SPHardwareDataType | awk '/Serial Number/ {print $3}')
NEW_NAME="Mac-${SERIAL_NUMBER}"


# Set macOS computer naming fields
sudo scutil --set ComputerName "$NEW_NAME"
sudo scutil --set HostName "$NEW_NAME"
sudo scutil --set LocalHostName "$NEW_NAME"

# Notify user and restart
osascript -e "tell app \"System Events\" to display dialog \"Your device has been renamed to $NEW_NAME. Press OK to restart.\" buttons {\"OK\"} default button \"OK\""
sudo shutdown -r now