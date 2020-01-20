#!/bin/bash
read -p "Enter a number to check " num
temp=$num
len=${#num}

chkPalin()
{
for ((i=0;i<$len;i++))
do
	r=$(($num%10));    
	sum=$(($((sum*10))+r));    
	num=$(($num/10));  
done
if (( $temp==$sum ))  
then
	echo "$temp is palindrome"
else
	echo "$temp is not Palindrome"
fi
}
chkPalin
