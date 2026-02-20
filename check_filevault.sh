#!/bin/bash
# Jamf Policy Script: prompt user and open FileVault settings if FileVault is off

status=$(/usr/bin/fdesetup status 2>/dev/null)

if echo "$status" | /usr/bin/grep -q "FileVault is On"; then
  echo "FileVault already enabled."
  exit 0
fi

/usr/bin/osascript -e 'display dialog "Action needed: Please enable FileVault to keep this Mac compliant.\n\nClick OK to open the FileVault settings." buttons {"OK"} default button "OK" with icon caution'

/usr/bin/open "x-apple.systempreferences:com.apple.preference.security?FileVault"

echo "Prompted user to enable FileVault."
exit 0
