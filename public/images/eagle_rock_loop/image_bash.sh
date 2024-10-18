#!/bin/bash

# Initialize an empty array
webp_files=()

# Loop through all .webp files in the current directory
for file in *.webp; do
  # Check if there are any .webp files
  if [[ -f $file ]]; then
    # Append the formatted string to the array with quotes
    webp_files+=("\"/images/eagle_rock_loop/$file\",")
  fi
done

# Output the array
echo "[${webp_files[*]}]"

