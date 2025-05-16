#!/bin/bash

echo "Password: 8 characters, 1 upper , 1 digit"
pass=0


while [ $pass -ne 3 ]; do # until the password dosn't match the 3 ifs we dont get out
	pass=0
	read text

	if [ ${#text} -ge 8 ]; then
		pass=$((pass+1))
	fi

	if [[ $text =~ [A-Z] ]]; then
		pass=$((pass+1))
	fi
	if [[ $text =~ [0-9] ]]; then
		pass=$((pass+1))
	fi

	if [ $pass -lt 3 ]; then
		echo "incorrect"
	fi
done

echo "Successfull"
