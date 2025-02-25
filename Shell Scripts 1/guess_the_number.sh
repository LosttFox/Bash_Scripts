#!/bin/bash

SECRET_NUMBER=4
GUESS=0

while [ $GUESS -ne $SECRET_NUMBER ]; do
	read -p "Guess the number: " GUESS
	if [ $GUESS -lt $SECRET_NUMBER ]; then
		echo "Too low!"
	elif [ $GUESS -gt $SECRET_NUMBER ]; then
		echo "Too high!"
	fi
done

echo "Correct! The number was $SECRET_NUMBER."