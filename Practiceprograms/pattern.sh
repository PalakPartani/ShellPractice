#!/bin/bash 

space=4
for(( i=1;i<=5;i++))
do
	for (( j=1;j<=$spaces;j++ ))
	do
		printf " "c
	done
	printf "* "
	for (( j=1;j<=$(( $(( 2 * $i)) - 1 ));j++ ))
	do
		printf " "
	done
	printf "* "
	space=$((space-1))

	echo -e "\n"
done 
