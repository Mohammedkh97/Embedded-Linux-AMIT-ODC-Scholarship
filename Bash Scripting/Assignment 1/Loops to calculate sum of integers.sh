# Write a shell script that calculates the sum of integers from 1 to N using a loop
!#/bin/bash
echo "Enter the value of N"  # Another way to print a message with input   # echo -n "Enter the value of N: "  read N
read N
# read -p "Enter the value of N: " N    # Another way to read input in the same line 
sum=0
for((i=1;i<=N;i++))
do
sum=$((sum+i))
done
echo "The sum of integers from 1 to $N is $sum"
# End of script
# Save file as sum.sh
# Run the script using the command
# bash sum.sh
# Output: Enter the value of N
# 5