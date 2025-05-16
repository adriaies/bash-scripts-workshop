#!/bin/bash
#Write a script that asks the user to input three numeric values, one at a time.  Use an until loop to keep asking until three valid integers are entered.
#Once you have all three values, you must:
#Display their sum (+)
#Display their product (*)
#Show the largest and smallest value

numbers=()
count=0

until [ "$count" -eq 3 ]; do
    echo "Write a numeric value"
    read input
    
    # Check if input is a valid integer
    if [[ "$input" =~ ^-?[0-9]+$ ]]; then
        numbers+=("$input")
        ((count++))
    else
        echo "Error: '$input' is not a valid integer"
    fi
done

# Calculate results
sum=$((numbers[0] + numbers[1] + numbers[2]))
product=$((numbers[0] * numbers[1] * numbers[2]))

#We comare between numbers with a logical operator, if 0 is bigger max = 0. on the other case we chose 1
max=$(( ${numbers[0]} > ${numbers[1]} ? ${numbers[0]} : ${numbers[1]} ))
# we repeat the same but using the max and the new variable
max=$(( max > ${numbers[2]} ? max : ${numbers[2]} ))

min=$(( ${numbers[0]} < ${numbers[1]} ? ${numbers[0]} : ${numbers[1]} ))

min=$(( min < ${numbers[2]} ? min : ${numbers[2]} ))

# Display results
echo "suma $sum"
echo "producto $product"
echo "min $min"
echo "max $max"
