#!/bin/bash
#  Write a function that checks whether an element occurs in a list.
# why is this so hard?

list=(one three lawnmower)

in_list () {
	while (( "$#" )); do
		echo $1
		shift
	done
}

in_list $list
