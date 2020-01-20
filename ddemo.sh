#!/bin/bash
declare -A associative
associative[key1]=val1
associative[key2]=val2
associative[key3]=val3

echo ${associative[key1]}

#@ prints value
echo ${associative[@]}

#deleting a key at 1
unset associative[key1]

# * prints key
echo ${!associative[*]}

# insert value
associative=([key1]=newv1 [key2]=newv2 [key3]=newv3)
echo ${associative[key3]}
echo ${associative[@]}
# associative is name of dictionary
