#!/bin/bash
# 1 Write a function that returns the largest element in a list.

num_array=(-20 5 73 -2)

max_element () {
    nums=("$@")
    min=0
    max=0
    for num in "${nums[@]}"; do
        if (($num < $min)); then
            let min=$num
            if (($max == 0)); then
                let max=$min
            fi
        fi
        if (($num > $max)); then
            let max=$num
        fi
    done
    echo $max
}

max_element "${num_array[@]}"


exit;