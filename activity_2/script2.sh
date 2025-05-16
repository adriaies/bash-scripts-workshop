#!/bin/bash

echo "write a negative number"

read number #reads an input

if [ $number -lt 0 ]; then #checks if the number is less than 0
	echo "It is negative!"
else
	echo "it is not negative!"
fi
