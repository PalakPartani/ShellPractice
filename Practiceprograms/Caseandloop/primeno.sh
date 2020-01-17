#!/bin/bash 
#taking input the range for prime no
read -p "Enter the range : " range

for (( i=2; i <= $range-1; i++ ))
do
p=0
for (( j=2; j <= $i-1; j++ ))
do
if [ `expr $i % $j` = 0 ]
then
p=1
fi
done
if [ `expr $p` = 0 ]
then
echo $i
fi
done
