#!/bin/bash
# This script backs up a directory using rsync. It will prompt for the source and destination directories.

# Prompt for source and destination directories
read -p "Enter the source directory: " SOURCE_DIR
read -p "Enter the destination directory: " DEST_DIR

# Check if the source directory exists
if [ ! -d "$SOURCE_DIR" ]; then
    echo "Source directory $SOURCE_DIR does not exist."
    exit 1
fi

# Create the destination directory if it doesn't exist
if [ ! -d "$DEST_DIR" ]; then
    mkdir -p "$DEST_DIR"
fi
# Use rsync to back up the directory
rsync -av --progress --delete "$SOURCE_DIR/" "$DEST_DIR/"
echo "Backup of $SOURCE_DIR to $DEST_DIR completed successfully."


