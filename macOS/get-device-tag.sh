#!/bin/bash
# This script collects the device's asset tag and serial number, then stores the asset tag in a file for later use.

# Get the serial number
SERIAL_NUMBER=$(system_profiler SPHardwareDataType | awk '/Serial Number/ {print $3}')

# Prompt the user for the asset tag
osascript -e "tell app \"System Events\" to display dialog \"Please enter the asset tag for this device (Serial: $SERIAL_NUMBER)\" default answer \"\" buttons {\"OK\"} default button \"OK\"" \
  | awk -F 'text returned:' '{print $2}' | xargs > /tmp/asset_tag.txt

# Notify the user that the asset tag has been saved
osascript -e "tell app \"System Events\" to display dialog \"Asset tag saved successfully. Press OK to continue.\" buttons {\"OK\"} default button \"OK\""

