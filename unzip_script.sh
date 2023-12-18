#!/bin/bash

# Find the zip file in the current directory
zip_file=$(find . -maxdepth 1 -type f -name '*.zip' -print -quit)

# Check if a zip file was found
if [ -n "$zip_file" ]; then
  echo "Found zip file: $zip_file"

  # Print the contents of the zip file (for debugging purposes)
  unzip -l "$zip_file"

  # Unzip the file
  unzip -q "$zip_file" -d FocusriteUserGuides/unzipped_files

  echo "Unzipped successfully."

  # Optionally, you can remove the original zip file if needed
  # rm "$zip_file"
else
  echo "No zip file found in the current directory."
fi
