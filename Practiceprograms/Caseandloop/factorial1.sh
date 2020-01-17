#!/bin/bash -x
fact=1
read -p "enter no" no
for (( i=2;i<=$no;i++ ))
do
	fact=$(( $fact * $i ))
  done
echo $fact
