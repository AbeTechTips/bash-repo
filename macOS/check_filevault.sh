#!/bin/bash
# Enforce FileVault - automatically enable it

status=$(/usr/bin/fdesetup status 2>/dev/null)

if echo "$status" | /usr/bin/grep -q "FileVault is On"; then
  echo "FileVault already enabled.✅"
  exit 0
else
  # Enable FileVault automatically
  /usr/bin/fdesetup enable -user "$LOGNAME" 2>/dev/null
  echo "FileVault enforcement initiated.✅"
  exit 0
fi