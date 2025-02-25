#!/bin/bash

# Gets the percentage threshold from the user
read -p "Enter the threshold percentage: " threshold

#Removes a % if the user added it on the end
if [[ $threshold == *% ]]; then
	threshold=${threshold//%}
fi

#Returns the FileSystems that exceed the threshold, if any
df | awk -v threshold=$threshold '$5+0 > threshold{print $1}' 