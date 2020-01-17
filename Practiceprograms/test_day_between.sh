#!/bin/bash -x

#declaring constants
readonly MARCH_MON=3
readonly JUNE_MON=6
readonly DATE=20

#taking input from user
read -p "Enter day" day
read -p "Enter month" month

#checking the day

if (($day>=20 && $month >= $MARCH_MON))
then
	if (($day<=20 && $month <= $JUNE_MON ))
	then
		echo true
	fi

else
	echo false
fi
