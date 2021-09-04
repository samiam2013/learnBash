#!/bin/bash
#  Write a function that checks whether an element occurs in a list.

list=(one three lawnmower)

in_list () {
	check=$1
	shift
	echo "check: $check"
	for x in "$@"; do
		echo $x
		if [[ $x == $check ]]; then
			echo "$check is in list"
		fi
	done
}

in_list "lawnmower" "${list[@]}" 
