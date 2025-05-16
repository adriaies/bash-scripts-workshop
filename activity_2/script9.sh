#!/bin/bash


echo "write the path of the directory"
read fpath

echo "write the name of the tar"
read archive

#Check if the path exists
if [ -e "$fpath" ]; then
#checks if the file exists and gives the overwirte option
	if [ -e $archive ]; then

		echo "already exists do you want to overwrite?(y/n)"
		read write
#if we want to overwited we tar the file
		if [ $write = "y" ]; then
			tar -czf "$archive" "$fpath"
			echo "compressed"
		else
			exit 1
		fi
	fi



else
	echo "does not exist"
fi


