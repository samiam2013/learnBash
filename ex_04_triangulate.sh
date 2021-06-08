#!/bin/bash
# Write a program that asks the user for a number 
#   n and prints the sum of the numbers 1 to n (tringulate?)

read -p "What number would you like triangulated?: " tri

sum=0
n=$((tri))
while [ $n != 0 ]; do
    let sum=sum+n
    let n=n-1
done

echo "triangle $tri is $sum"

exit;