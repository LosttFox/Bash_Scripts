#!/bin/bash

current_hour=$(date +%H)

if [ $current_hour -lt 12 ]; then
	echo "Good morning!"
elif [ $current_hour -lt 18 ]; then
	echo "Good afternoon!"
else
	echo "Good evening!"
fi