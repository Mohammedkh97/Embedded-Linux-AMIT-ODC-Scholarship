#!/bin/bash

read -p "Enter two strings: " string1 string2

if [ "$string1" != "$string2" ]
then
    echo "Not matched"
else
    echo "Matched"
fi


