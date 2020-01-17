#!/bin/bash -x

read -p "Enter year " year
#checking length
yearLen=${#year}
if (( $yearLen == 4))
then
	if (( $year%4 ==0 || $year%100==0 && $year%400==0 ))
	then
		echo "$year Leap year"
	else
		echo "Not a leap year"
	fi
else
	echo "Wrong Input"
fi
