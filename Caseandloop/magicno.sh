#!/bin/bash
read -p "Enter a no between 1 to 100 " n
low=0
high=100
input=0
while (($input!=2))
do
	mid=$(( $(( $low + $high )) / 2 ))
	echo "Mid is the value ?" $mid
	echo "Press 0 if it is less or 1 for greater or 2 for equal"
   	read input

	if (( input ==0 ))
		then
		high=$mid
	elif (( input == 1 ))
		then
		low=$(($mid+1 )) 
	elif (( input == 2))
		then
		echo "Your number is mid " $mid
		break
	fi
done 


