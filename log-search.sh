#!/bin/bash
# This script is used to search for a specific string in the log files of a given directory.

# Prompt the user to enter the name of the application
echo "Enter the name of the application:"
read APPLICATION_NAME

# Check if the dir file exists (assuming logs are in ~/Library/Logs/)
LIBRARY_DIR="~/Library/Logs/${APPLICATION_NAME}"
if [ -d "*$LIBRARY_DIR*" ]; then
    echo "Dir file for $APPLICATION_NAME exists at $LIBRARY_DIR."
else
    echo "Dir file for $APPLICATION_NAME does not exist."
fi
