#!/bin/bash

webp_files=()

for file in *.webp; do
  # Check if there are any .webp files
  if [[ -f $file ]]; then
    webp_files+=("\"/images/eagle_rock_loop/$file\",")
  fi
done

echo "[${webp_files[*]}]"

