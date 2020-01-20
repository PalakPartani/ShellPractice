#!/bin/bash
for (( i=0;i<100;i++ ))
do

arr[i]=$((i+1))
# used -eq so square brackets
if [[ ${arr[i]:0:1} -eq ${arr[i]:1:1} ]]
then
#if matched then print array value
echo "${arr[i]}"
fi
done
