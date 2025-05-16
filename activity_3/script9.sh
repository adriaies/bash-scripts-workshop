#!/bin/bash

options = "1" #initiate the loop


while [ "$options" != "3" ]; do

	echo "1) Show current date and time"
	echo "2) Check if a file exists"
	echo "3) Exit"
	read options

	if [ "$options" = "1" ]; then #use the date function to show the date
	     date
	elif [ "$options" = "2" ]; then
		echo "write the full path of a file"	#check if the file exists
		read filepath
		if [ -e "$filepath" ]; then
			echo "exists"
		else
			echo "file does not exist"
		fi
	elif [ "$options" = "3" ]; then	#exit the program
		echo "bye!"
	else
		echo "Error try again"
	fi
done
