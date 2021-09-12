#!/bin/bash
#  Write a function that computes the running total of a list.

running_total () {
	sum=0
	for x in $@; do
		#echo $x; 
		sum=$(($sum + $x))
		echo $sum;
	done;
}

numbers=(1 2 3 4 5 6 7 8 9 10)

running_total "${numbers[@]}"