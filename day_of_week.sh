#!/bin/bash

ANGER=0

while [ True ]; do
	read -p "Enter a number (1-7): " DAY
	
	case $DAY in
		1) echo "Monday";;
		2) echo "Tuesday";;
		3) echo "Wednesday";;
		4) echo "Thursday";;
		5) echo "Friday";;
		6) echo "Saturday";;
		7) echo "Sunday";;
		"exit") exit 0;;
		*)  if [ $ANGER -lt 2 ]; then
				echo "Please only input 1-7!"
				ANGER=$((ANGER+1))
			elif [ $ANGER -lt 4 ]; then
				echo "Can you read? It says 1-7. That's 1, 2, 3, 4, 5, 6, 7."
				ANGER=$((ANGER+1))
			elif [ $ANGER == 4 ]; then
				echo "That's it. I've had it with your games. You don't get to do this anymore."
				sleep 1
				shutdown now
			fi;;
	esac
done