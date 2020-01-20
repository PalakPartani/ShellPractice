#!/bin/bash 
read -p "Enter number " n
#nostar=4
space=4
for (( i=0;i<=$n;i++))
do
	for(( j=0;j<=$(($space+$n));j++))
	do
		if (( j==$space+1 || j==$(($space+$n )) ))
		then
			echo -e "*"
		else
			printf " "
		fi
	done
		space=$(($space-1))
		#nostar=$(($nostar+1))
		

		
done
n=$(($n+1))
space=$(($space-1))
for((k=0;k<=n;k++))
do
if (( j==$space+1 || j==$(($space+$n)) ))
		then
			echo -e "*"
		else
			printf " "
		fi
printf "*"
done
