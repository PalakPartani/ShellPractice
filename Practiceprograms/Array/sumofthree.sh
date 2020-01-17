#!/bin/bash -x
input=0
sum[((input++))]"1"
sum[((input++))]"-1"
sum[((input++))]"0"
sum[((input++))]"2"
sum[((input++))]"-2"
sum[((input++))]"3"
sum[((input++))]"4"

echo ${sum[@]}
for((i=0;i<7;i++))
do
for((j=1;i<6;i++))
do
for((k=2;k<5;k++))
do
	if(($sum[i]+$sum[j]+$sum[k]==0))
   then
		echo ${sum[}




