#!/bin/bash

# Read two numbers from the user
echo "Enter the first number:"
read num1

echo "Enter the second number:"
read num2

# Perform basic math operations
Addition=$((num1 + num2))
Subtraction=$((num1 - num2))
Multiplication=$((num1 * num2))

if [ "$num2" -ne 0 ] 
then
    quotient=$((num1 / num2))
    Reminder=$((num1 % num2))
else
    quotient="undefined (division by zero)"
    Reminder="undefined (modulus by zero)"
fi

# Display the results
echo "Addition: $num1 + $num2 = $Addition"
echo "Subtraction: $num1 - $num2 = $Subtraction"
echo "Multiplication: $num1 * $num2 = $Multiplication"
echo "Division: $num1 / $num2 = $quotient"
echo "Modulus: $num1 % $num2 = $Reminder"
