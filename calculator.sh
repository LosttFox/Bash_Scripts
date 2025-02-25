#!/bin/bash

read -p "Enter first number: " num1
read -p "Enter second number: " num2
read -p "Enter an operation: " operation

case $operation in
	+)
		result=$(( num1 + num2 ))
		;;
	-)
		result=$(( num1 - num2 ))
		;;
	\* | x)
		result=$(( num1 * num2 ))
		;;
	/ | % | mod)
		if [ $num2 -eq 0 ]; then
			echo "Division by zero is not allowed."
			exit 1
		fi
		
		if [ $operation == / ]; then
			result=$(( num1 / num2 ))
		elif [ $operation == % ] || [ $operation == mod ]; then
			result=$(( num1 % num2 ))
		fi
		;;
	^ | \*\*)
		result=$(( num1 ** num2 ))
		;;
	*)
		echo "Unknown or Invalid operation."
		exit 1
		;;
esac

echo "The result is: $result"
