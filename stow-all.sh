#!/bin/bash

for file_name in *; do
    if [ -d "$file_name" ]; then
	folder_name=$file_name
	script_file_name=".script-$folder_name"
	if [ -f "$script_file_name" ]; then
	    echo "Running $script_file_name:"
	    source $script_file_name
	fi
	echo "Stowing $folder_name..."
	stow $folder_name
    fi
done
