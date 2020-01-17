#!/bin/bash -x
getRandom=$(( RANDOM%2))
if(( $getRandom==1 ))
then
echo "Head"
else
echo"tail"
fi
