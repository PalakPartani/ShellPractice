#!/bin/bash -x
read -p" Enter a Number :" numChk
case $numChk in
0)
	echo"Sunday";;
1)
	echo"Monday";;
2)
   echo"Tuesday";;
3)
echo"Wednesday";;
4)
   echo"Thusday";;
5)
   echo"friday";;

6)
   echo"saturday";;
*)
   echo"Enter valid day";;
esac

