#!/bin/bash -x
read -p "Enter range " n

i=0

while ((i<=$n))
do
	num=`expr 2^$i | bc`
	if (( $num<=256 ))
	then
		echo "2 power $i :" $num
	else
		break
	fi
i=$((i+1))
done
