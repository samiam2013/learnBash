#!/bin/bash
# Write a program that prints the next 20 leap years.

# what's the leap year rule?
# says google : year % 4 == 0 || (year % 100 && year % 400)

year=`date +"%Y"`
yearN=1
while (( $yearN < 21 )); do
    let year=year+1
    if (( $year % 4 == 0 )); then
        if (( $year % 100 == 0 )); then 
            if (( $year % 400 == 0 )); then 
                echo "$yearN: $year" 
                let yearN=yearN+1
            else 
                continue;
            fi
        else
            echo "$yearN: $year"
            let yearN=yearN+1
        fi
    fi
done


exit;