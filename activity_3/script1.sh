#!/bin/bash
#Write a script that removes comments (lines starting with # until the end of the line) 
#from a file. Once the comments are removed, ask the user if a given word/phrase exists 
#in the file. Then, prompt the user to add a sentence to the 
#end of the file (this step is mandatory).


echo "write the full path of the file"
read file

touch "Clean"_"$file" #We create the new file
newfile="Clean_$file"

mapfile -t lineas < "$file"	#with this comand we are dividing the file like an array


for i in "${lineas[@]}"; do	#usual for loop

	if [[ ! "$i" =~ ^# ]]; then	#If the line doesnot contain # at the begining then append it to the file

	echo "$i" >> "$newfile"
	fi

done

echo "write a word" #Check if we have the wordi n the file
read word
	if  grep -q $word "$newfile" ; then
	echo "exists"
	fi

echo "add a new line to the file" #add new text
read text

echo "$text" >> "$newfile"
