#!/bin/bash -x

#taking 3 numbers as input
read num0
read num1
read num2

#Arithematic Operations
res1=$((num1+num2*num3))
res2=$((num3+num1*num2))
res3=$((num1%num2+num3))
res4=$((num0*num1+num3))

#Finding minimum and maximum
if (( $res1 > $res2 ))
then
	min=$res2
	max=$res1
else
	min=$res1
	max=$res2
fi

if (( $res3 > $max ))
then
	min=$max
	max=$res3
elif (( $res3 > $min && $res3 != $max ))
then
	min=$res3
elif (( $res4 > $max ))
then
	min=$max
	max=$res4
elif (( $res4 > $min && $res4 != $max ))
then
	min=$res4
fi

#Display min and max
echo "Min:$min"
echo "Max:$max

