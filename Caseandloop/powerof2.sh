#!/bin/bash -x
#power of 2
#take input for power
num=1
read -p "Enter the power: " power
for (( i=1; i<=power; i++))
do
num=`expr 2^$i | bc`
echo "2 power $i :" $num
done

