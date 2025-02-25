#!/bin/bash

#Prompts the user for the directory being backed up
read -p "Enter the directory you want to back up: " dir

#Verifies the directory specified exists
if [ ! -d "$dir" ]; then
	echo "Directory $dir does not exist."
	exit 1
fi

#Prompts the user for the directory that should hold the backup
read -p "Enter the directory where the backup will be saved: " backup_dir

#Verifies the backup directory exists
if [ ! -d "$backup_dir" ]; then
	echo "Directory $backup_dir does not exist."
	exit 1
fi

#Gets the current timestamp in YYYY-MM-DD_HH:MI:SS format
timestamp=$(date +%Y-%m-%d_%H:%M:%S)

#Creates and appends the backup folder to the path from backup_dir
mkdir $backup_dir"/backup_"$timestamp
backup_dir=${backup_dir}"/backup_"$timestamp

#Prompts the user to confirm if the backup_dir they provided (with the addition of the folder) is the path they want to use
read -p "Is the path $backup_dir correct (y/n)? " confirm_backup

#Asks the user if they want to specify a new path
if [[ $confirm_backup == "n" ]]; then
	exit 1
fi



#Creates the backup of dir at backup_dir
cp -r "$dir" "$backup_dir"

#Tells the user whether the backup succeeded or failed
if [ $? -eq 0 ]; then
	echo "Backup of $dir created at $backup_dir."
else
	echo "Failed to create backup."
fi
