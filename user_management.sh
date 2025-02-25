#!/bin/bash

#Prompts the user for the username of the new user
read -p "Enter the new username: " username

#Prompts the user for the default password of the new user
read -p "Enter $username's default password: " password

#Creates the new user
sudo useradd $username

#Updates the new user's password
printf "$username:$password" | sudo chpasswd 

echo "$username has been added."