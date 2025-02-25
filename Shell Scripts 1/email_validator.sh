#!/bin/bash

read -p "Enter an email address: " EMAIL

if [[ $EMAIL =~ ^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$ ]]; then
	echo "Valid email address."
else
	echo "Invalid email address."
fi