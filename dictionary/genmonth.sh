#!/bin/bash 

declare -A monthdictss
for ((i=1;i<=50;i++))
do
 genRand=$(( RANDOM%12 ))
 monthdict[$genRand]=$(( ${monthdict[$genRand]} +1 ))
done
for i in ${!monthdict[@]}
do
	echo $(($i+1)) " month have no of birthdays is" ${monthdict[$i]}
done
