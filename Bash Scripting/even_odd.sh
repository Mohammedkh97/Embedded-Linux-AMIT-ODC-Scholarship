#!/bin/bash
echo "Enter a number:"
read num

if (( num % 2 == 0 ))
then
  echo "Number $num is even"
else
  echo "Number $num is odd"
fi
