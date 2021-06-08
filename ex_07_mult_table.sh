#!/bin/bash
# Write a program that prints a multiplication table 
#   for numbers up to 12.

x=1
y=1
product=x*y
while (( $x < 13 )); do
    while (( $y < 13 )); do
        let product=x*y
        printf '%4s' "$product"
        let y=y+1
    done
    let y=1
    let x=x+1
    printf "\n"
done 

exit;