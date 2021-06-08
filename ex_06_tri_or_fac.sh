#!/bin/bash

# Write a program that asks the user for a number n 
#   and gives them the possibility to choose between 
#   computing the sum and computing the product of 1,…,n.

read -p "Factorialize(1) or Triangulate(2): " option
read -p "What input number?: " n
sum=0
if [[ $option -eq '1' ]]; then 
    echo "factorialize $n... "
elif [[ $option -eq '2' ]]; then 
    echo "triangulate $n..."
fi

echo "sum: $sum"

exit;