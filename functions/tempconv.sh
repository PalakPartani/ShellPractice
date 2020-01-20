#!/bin/bash -x
farenHtTemp()
{
	degF=$(($(($temp * 9 / 5 )) + 32 ))
	echo "Temp in f is " $degF
}
celciusTemp()
{
	degC=$(($(($temp - 32)) * 5 / 9 ))
	echo "Temp in C is " $degC
}
read -p "enter 1 for temp to convert in F or 2 for converting to celcius" choice
echo "enter temp"
read temp
case $choice in 
	1)
		if (( temp >0 && temp <32 ))
		then
			farenHtTemp
		else
			echo "Enter between 0-32F"
		fi
	;;
	2)
		if (( temp >=100 && temp <=212 ))
		then
			celciusTemp
		else
			echo "Enter between 100-212C"
		fi
	;;
	*)
		echo"Cannot Convert"
	;;
esac

