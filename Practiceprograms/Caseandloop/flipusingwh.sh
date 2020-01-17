#!/bin/bash -x
head=0
tail=0
while(( 1 ))
do
	getRand=$((RANDOM%2))
	echo $getRand
	if (($getRand == 1 && $head <= 11))
	then
	 	head=$(($head+1))
	elif (($getRand == 0 && $tail <= 11))
	then		
	 	tail=$(($tail+1))
	fi
	if (($head == 11 || $tail == 11))
	then
		break
	fi
done
echo "HEAD" $head
echo "TAIL" $tail
  
