#!/bin/bash


echo $@
string=("$@") #We save he parameters on a array

#set parameter to 0
pos=0
neg=0
equal=0

for i in "${string[@]}";do	#for each number we have a count updating
    	if ! [[ "$i" =~ ^-?[0-9]+$ ]]; then
        	echo "Error: '$i' is not a valid integer. Skipping." >&2
	elif [ "$i" -eq 0 ]; then
		((equal++))
	elif [ "$i" -gt 0 ]; then
		((pos++))
	elif [ "$i" -lt 0 ]; then
		((neg++))
	fi
done

echo $pos $neg $equal
