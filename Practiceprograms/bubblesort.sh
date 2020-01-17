#!/bin/bash -x
read -p "Enter the length :" len
read -a inarr
len=${#inarr[@]}
for((i=0;i<$len;i++ ))
do
  for(( j=i;j<$len-i;j++))
  do
	if [[ ${inarr[j]} -gt ${inarr[$j+1]} ]]
		then
		temp=${inarr[$j]}
		inarr[$j]=${inarr[$((j+1))]}
		inarr[$((j+1))]=$temp
	fi
	done
done
echo "Sorted array" ${inarr[@]}







