#!/bin/bash

if [ "$#" -ne 3 ]; then #checks the number of argumnets


	echo "Remember ussing add,substract,multiply or divide"
	exit 1
fi

#We make sure that both imputs are numbers
if ! [[ "$2" =~ ^-?[0-9]+$ ]]; then
    echo "Not a number"
    exit 1
fi

if ! [[ "$3" =~ ^-?[0-9]+$ ]]; then
    echo "not a number"
    exit 1
fi


num1=$2
num2=$3

add=$((num1 + num2))
substract=$((num1 - num2))
multiply=$((num1 * num2))

# depending on the text we will make some operation
#It is more optimal to make the operation on each if instead how i made it.
if [ $1 = "add" ]; then
	echo $add
elif [ $1 = "substract" ]; then
        echo $substract

elif [ $1 = "multiply" ]; then
        echo $multiply

elif [ $1 = "divide" ]; then
	if [ "$num2" -eq 0 ]; then
		echo "cannot divide by 0"
		exit 1
	else
		divide=$((num1 / num2))
        	echo $divide
	fi
else

echo "invalid operations "

fi
