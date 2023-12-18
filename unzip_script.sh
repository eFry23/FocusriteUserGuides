#!/bin/bash

# Find the zip file in the current directory
zip_file=$(find . -maxdepth 1 -type f -name '*.zip' -print -quit)

# Check if a zip file was found
if [ -n "$zip_file" ]; then
  # Unzip the file
  unzip "$zip_file" -d main

  # Optionally, you can remove the original zip file if needed
  # rm "$zip_file"
else
  echo "No zip file found in the current directory."
fi

