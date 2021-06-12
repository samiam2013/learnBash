#!/bin/bash
# Write a program that prints all prime numbers. 
#   (Note: if your programming language does not 
#   support arbitrary size numbers, printing all 
#   primes up to the largest number you can easily 
#   represent is fine too.)

# this ISN'T working. 

candidate=5
while true; do 
    let i=2
    let ceil=`echo "sqrt($candidate)+1" | bc`
    let is_prime=1
    printf 'factor ceiling %d\n' $ceil
    while (() `echo "$i<$ceil" | bc` == 1 )); do
        echo "$candidate/$i"
        if (( `echo "$candidate%$i==0" | bc` == 1 )); then
            let is_prime=0
            echo "not prime"
            break
        fi
        let i=i+1
    done
    if (( $is_prime == 0 )); then 
        break
    fi
    let candidate=candidate+1
    exit
done


exit;