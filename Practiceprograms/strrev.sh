#!/bin/bash  -x
read -p "Enter a string " var
len=${#var}
rev=""
for ((i=$len-1;i>=0;i--))
do
	rev="$rev${var:$i:1}"	
done
echo "reverse is " $rev
