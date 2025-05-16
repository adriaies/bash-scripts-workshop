#!/bin/bash

echo "Write 0"

read zero

if [ $zero -ne 0 ]; #Checks if the number is not 0
	then echo "notzero"
else
	echo "zero"

fi
