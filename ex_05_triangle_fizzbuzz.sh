#!/bin/bash
# Modify the previous program such that only
#   multiples of three or five are considered in the sum, 
#   e.g. 3, 5, 6, 9, 10, 12, 15 for n=17

read -p "fizzbuzz triangle?: " fbtri

n=$(($fbtri))
sum=0
while (( n > 0 )); do 
    #echo "n $n"
    if (( $(($n % 3)) == 0 )); then
        printf "fizz"
        let sum=sum+n
    elif (( $n % 5 == 0 )); then
        let sum=sum+n
        printf "buzz"
    fi
    let n=n-1
    #printf '%s\n' "$(($n+1))"
done

echo "fizzbuzz triangle of $fbtri is $sum"


exit;