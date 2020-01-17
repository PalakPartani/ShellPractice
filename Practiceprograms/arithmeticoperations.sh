#!/bin/bash -x
read -p  "Enter number1: " num1
read -p  "Enter number2: " num2
read -p  "Enter number3: " num3
resultAddMul=$(( num1+num2*num3 ))
resultAddDiv=$(( num3+num1/num2 ))
resultModAdd=$(( num1%num2+num3 ))
resultMulAdd=$(( num1*num2+num3 ))

echo $resultAddMul
echo $resultAddDiv
echo $resultModAdd
echo $resultMulAdd
