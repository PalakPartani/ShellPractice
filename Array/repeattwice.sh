#!/bin/bash
for (( i=0;i<100;i++ ))
do
	if (( $i < 10 ))
	then
		continue
	else
		z=$i	
		r1=$(($z%10))
		z=$(($z/10))
		r2=$(($z%10))
		if (( $r1 == $r2))
		then
			arr[$i]=$i
		else
			continue

		fi
	fi
done
echo  "${arr[@]}"
