#!/bin/bash

MOVIES=("RRR" "DJTILLU" "MURARI")

#Size of the above array is 3
# index are 0,1,2,3

#list always start with 0

echo "First Movie is: ${MOVIES[0]}"
echo "First Movie is: ${MOVIES[1]}"
echo "First Movie is: ${MOVIES[@]}" # @ all arrays 
