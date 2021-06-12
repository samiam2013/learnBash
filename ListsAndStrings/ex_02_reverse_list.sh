#!/bin/bash
# 2 Write function that reverses a list, preferably in place.
reverse () {
    list=("$@")
    printf "%s\n" "${list[@]}" | tac 
} 

input_list=(1 0 3 18 -173)
reverse "${input_list[@]}"

exit;