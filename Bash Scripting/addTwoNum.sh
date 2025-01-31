#!/bin/bash

# Read two numbers as input
#echo "Enter the first number:"
#read num1
read -p "Enter the first number: " num1

echo "Enter the second number:"
read num2

# Calculate the sum
sum=$((num1 + num2))

# Display the result
echo "The sum of $num1 and $num2 is: $sum"

# instead of echo $(($1 + $1))