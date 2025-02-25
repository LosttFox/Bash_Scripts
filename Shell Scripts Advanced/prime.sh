#!/bin/bash

read -p "Enter a positive integer: " num

if [ $num -le 1 ]; 
then
	echo "$num is not a prime number."
	exit 1
fi

is_prime=1

for (( index=2; index <= $num/2; index++ )); 
do
	if [ $(( num % index )) == 0 ]; 
	then
		is_prime=0
		break
	fi
done

if [ $is_prime == 1 ]; 
then 
	echo "$num is a prime number."
else
	echo "$num is not a prime number."
fi
	
