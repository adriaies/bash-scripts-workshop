#!/bin/bash


#We enter the diferent parameters
echo "write the full path to the file"

read file
echo "write the name of te protocol in caps"
read protocol


#Read the path file and if it wokrs
if [ -e "$file"  ]; then
	#Check if the ending is  an aviable type of file
	if [[ "$file" == *.txt || "$file" == *.csv ]]; then
		#count the lines with the protocol
		count=$(grep -i "$protocol" "$file" | wc -l)
		#if count = 0 we end the script
		if [ "$count" -eq 0 ]; then
			echo "no lines containing the protocol"
			exit 1
		else
			#show the variable output
			grep -i ""$protocol"" "$file" | wc -l
		fi
	else
		echo "wrong file"
		exit 1
	fi
else
	echo "error on the path "
	exit 1
fi
