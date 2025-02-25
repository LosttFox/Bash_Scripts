#!/bin/bash

read -p "Enter the directory to backup: " dir
backup_dir="${dir}_backup_$(date +%Y%m%d_%H%M%S)"

if [ ! -d "$dir" ]; then
	echo "Directory $dir does not exist."
	exit 1
fi

cp -r "$dir" "$backup_dir"

if [ $? -eq 0 ]; then
	echo "Backup of $dir created at $backup_dir."
else
	echo "Failed to create backup."
fi