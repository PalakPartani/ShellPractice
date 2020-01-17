#!/bin/bash -x
read -p "Enter no " num
result=1
for (( i=2; i <= num; i++ ))
do
result=$(echo "scale=2 ; $result+1/$i" |bc)
echo $result
done

