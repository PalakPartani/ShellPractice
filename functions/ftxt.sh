#!/bin/bash -x
function fun()
{
	echo $1

}
res="$( fun $(( RANDOM%2 )) )"
if [ $res -eq 1 ]
then
 	echo "Success"
else
	echo "failure"
fi
