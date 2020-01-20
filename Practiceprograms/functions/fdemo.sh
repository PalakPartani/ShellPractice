#!/bin/bash -x
#function  defination
func()
{
	echo "I was called as : $@"
x=funtn
}

echo "Script wascalled with $@"
x=main
echo "x is $x"
#passing parameters to functn
func p l k
echo "x is $x"
