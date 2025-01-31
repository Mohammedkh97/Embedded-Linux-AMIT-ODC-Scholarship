# Write a shell script that calculates the sum of integers from 1 to N using a loop
!#/bin/bash
echo "Enter the value of N"
read N
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