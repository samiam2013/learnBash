#!/bin/bash
#  Write a function that returns the elements on odd positions in a list.

list=(zero1 odd1 even1 odd2 even2 odd3 even3)

odd_elems () {
	for ((i=0; i<${#list[@]};i++)); do
		#echo $i ${list[$i]};
		if [ $(($i % 2)) -eq 1 ]; then
			echo ${list[$i]};
		fi
	done;
}

odd_elems "$list[@]"
