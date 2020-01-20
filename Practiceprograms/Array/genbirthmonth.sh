#!/bin/bash 

declare -A dice
for ((i=0;i<=50;i++))
do
 genRand=$(( RANDOM%12))
 monthdict[$genRand]=$(( ${monthdict[$genRand]} +1 ))
done
for i in ${!monthdict[@]}
do
	echo $i "->" ${monthdict[$i]}
dones
	
