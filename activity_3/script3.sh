#!/bin/bash
#Write a script that reads words from the keyboard and stores them in a file until the user types :>. 
#Don’t forget to check if the destination file exists or create it before writing.

touch "text.txt"	#We create the directory
echo "Afegir text"
read text			#Create the condition to enter the loop
echo "$text">> "text.txt"	#add the text



while [[ "$text" != ":>" ]]; do #While the word is not :> we keep writing the text

	echo "Afegir text"
	read text
	echo "$text">> "text.txt"


done

