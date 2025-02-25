#!/bin/bash

read -p "Enter a positive integer: " num
factorial=1

if [ $num -lt 0 ]; then
	echo "Factorial is not defined for negative numbers."
	exit 1
fi

for (( index=1; index <= $num; index++ )); do
	factorial=$(( factorial * index ))
done

echo "The factorial of $num is $factorial."

