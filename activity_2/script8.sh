#!/bin/bash

echo "write the full path of a file or directory"
read file

if [ -e "$file" ]; then #reads the path of the file
	
	if [ -d "$file" ]; then	#its a directory
		echo "it is a directory"
	elif [ -f "$file" ]; then	#it is a file so you check the kind of file
		echo ` file $file `
		echo "it is a file "
	else
		echo "error"
	fi
else
	echo "error on the path"
fi
