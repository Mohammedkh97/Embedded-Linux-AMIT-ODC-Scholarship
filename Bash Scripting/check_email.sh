#!/bin/bash

read -p "Enter Your mail: " email


# Regular expression to check the email validity
#if [[ ! $email =~ ^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$ ]];

if [[ $email != *@*.* ]]
then 
echo "Not valid"
else
echo "valid"
fi

#read -p "two num: " max min
#echo $((RANDOM % (max - min+1) + min))

