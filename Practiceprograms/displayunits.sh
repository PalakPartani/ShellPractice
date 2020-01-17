#!/bin/bash

read  -p "Enter Number " num
numLen=${#num}
if (( $numLen == 1))
	then
	echo "unit"
elif (( $numLen == 2 ))
        then
        echo "tens"
elif (( $numLen == 3 ))
        then
        echo "hundred"
elif (( $numLen == 4 ))
        then
        echo "thousand"
else
	echo "Exceeding limits!"
fi

