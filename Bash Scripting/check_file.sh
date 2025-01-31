#!/bin/bash
echo "Enter the file name:"
read filename

if [ -f $filename ]
then
  echo "File $filename found."
else
  echo "File $filename not found."
fi
