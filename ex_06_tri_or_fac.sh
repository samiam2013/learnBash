#!/bin/bash

# Write a program that asks the user for a number n 
#   and gives them the possibility to choose between 
#   computing the sum and computing the product of 1,…,n.

read -p "Factorialize(1) or Triangulate(2): " option
read -p "What input number?: " n
sum=0
ni=$(($n))
if [ "$option" -eq 1 ]; then 
    echo "factorialize $n... "
    let sum=1
    while (( $ni > 1 )); do
        echo "factor $ni"
        let sum=sum*ni
        let ni=ni-1
    done
elif [ "$option" -eq 2 ]; then 
    echo "triangulate $n..."
    while (( $ni > 1 )); do
        let sum=sum+ni
        let ni=ni-1
    done
else 
    echo "invalid input."
    exit
fi

echo "result: $sum"

exit;