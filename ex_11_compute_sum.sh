#!/bin/bash
# Write a program that computes the sum of an alternating series where each element of the 
#   series is an expression of the form ((-1)^{k+1})/(2 * k-1) for each value of k 
#   from 1 to a million, multiplied by 4. 

# this is slow and I guess I should try using perl or python on the command?
#   basically all the solutions are cheating

sum="0"
for k in {1..1_000_000}; do
    sum="`echo "scale=4; $sum+((-1)^($k+1))/(2*$k-1)" | bc -l`"
    #echo "sum $sum"
done
echo "sum $sum"


exit;