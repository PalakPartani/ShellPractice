#!/bin/bash -x

#User input
read -p "Enter a number to check whether it is prime or not: " num

len=$(( $num / 2 ))
flag=0
for (( i=2; i<=$num/2; i++))
do
if (( $num % $i  == 0 ))
then 
flag=$flag+1
break
fi
done

if (( $flag == 0 ))
then 
echo "$num is prime"
else
echo "$num is not prime"
fi

