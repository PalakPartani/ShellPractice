#!/bin/bash -x
read -p" Enter a Number :" numChk
case $numChk in
0)
	echo "unit";;
1)
	echo "tens";;
2)
   echo "hundred";;
3)
echo "Thousand";;
4)
   echo "ten thousand";;
 
*)
   echo "Limits exceeded";;
esac

