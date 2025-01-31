#!/bin/bash

read -p "Enter the string: " string
# Convert from uppercase to lowercase using tr
output=$(echo "$string" | tr '[:upper:]' '[:lower:]')

echo "Lowercase: $output"