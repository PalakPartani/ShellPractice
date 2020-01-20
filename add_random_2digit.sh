#!/bin/bash -x
i=0
sum=0
average=0

getRandom1=$(( RANDOM%100 ))
getRandom2=$(( RANDOM%100 ))
getRandom3=$(( RANDOM%100 ))
getRandom4=$(( RANDOM%100 ))
getRandom5=$(( RANDOM%100 ))
sum=$(($sum+$getRandom1+$getRandom2+$getRandom3+$getRandom4+$getRandom5))
done
echo "Addition : " $sum
average=$(($sum/5 ))
echo "Average : "$average
