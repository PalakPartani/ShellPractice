#!/bin/bash
num1=$(( RANDOM%2 ))
num2=$(( RANDOM%3 ))
echo "Addtion of two random number : " $(( $num1+$num2 ))
