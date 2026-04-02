#!/bin/bash

uuid=$(/usr/sbin/system_profiler SPHardwareDataType | awk '/Hardware UUID/ {print $3}')
locationPrefs="/private/var/db/locationd/Library/Preferences/ByHost/com.apple.locationd.${uuid}.plist"
byHostPath="/var/db/locationd/Library/Preferences/ByHost/com.apple.locationd"

# Prefer host-specific setting first, then global.
val=$(sudo defaults read "$locationPrefs" LocationServicesEnabled 2>/dev/null \
      || sudo defaults read "$byHostPath" LocationServicesEnabled 2>/dev/null \
      || echo 0)

if [ "$val" -eq 1 ]; then
  echo "Location services are turned on ✅"
else
  echo "Location services are turned off, please press enter to enable"
  read -r  # wait for Enter
  sudo -u "_locationd" /usr/bin/defaults -currentHost write "$locationPrefs" LocationServicesEnabled -int 1
  sudo defaults write "$byHostPath" LocationServicesEnabled -int 1
  sudo /usr/sbin/chown "_locationd:_locationd" "$locationPrefs"
  echo "Location services enabled ✅"
fi

echo "Please restart your Mac for the changes to take effect."
