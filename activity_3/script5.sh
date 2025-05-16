#!/bin/bash
#Write a script that asks the user to enter a directory path 
#and then displays the permissions of the directory, 
#the number of files and subfolders it contains and the names of all files 
#and folders inside it.



echo "Write a directroy  path"
read directory

until [ -d "$directory" ]; do 			#On a loop until we dont use a aviable direectory
	echo "Write a directroy  path"

	read directory
done

ls -l "$directory"			#We check permissions count directories etc
find $directory -type f | wc -l
#echo tree "$directory" | count
#echo `tree "$directort"`
find "$directory" -type f
#tree $directory
