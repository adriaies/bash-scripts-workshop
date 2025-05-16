#!/bin/bash

echo "Write an integer"

read number #We read the variable

if [ $number -lt 0 ]; #compare it with 0
	then echo "Negative" #make an output depending on the text

elif [ $number -ge 0 ] ;
	 then echo "Positive"

fi
