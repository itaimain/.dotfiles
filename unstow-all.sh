#!/bin/bash

for file_name in *; do
    if [ -d "$file_name" ]; then
	folder_name=$file_name
	echo "Unstowing $folder_name..."
	stow $folder_name
    fi
done
