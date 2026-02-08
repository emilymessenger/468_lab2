#!/bin/bash

# check if a directory argument was provided
if [ $# -ne 1 ]; then
  echo "Usage: $0 <directory>"
  exit 1
fi

SRC_DIR=$1
BACKUP_DIR="backup"

# check if directory exists
if [ ! -d "$SRC_DIR" ]; then
  echo "Error: Directory does not exist."
  exit 1
fi

# create backup directory if it doesn't exist
mkdir -p "$BACKUP_DIR"

echo "Directory structure of $SRC_DIR:"
ls -R "$SRC_DIR"

# copy .txt files
cp "$SRC_DIR"/*.txt "$BACKUP_DIR" 2>/dev/null

if [ $? -eq 0 ]; then
  echo "Text files copied to $BACKUP_DIR/"
else
  echo "No .txt files found to copy."
fi

