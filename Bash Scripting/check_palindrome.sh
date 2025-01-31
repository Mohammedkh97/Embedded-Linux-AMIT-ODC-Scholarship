#!/bin/bash

check_palindrome() {
    local string="$1"
    if [[ "$(echo "$string" | rev)" == "$string" ]]; then
        echo "The string is a palindrome"
    else
        echo "The string is not a palindrome"
    fi
}

read -p "Enter a string: " str
check_palindrome "$str"
