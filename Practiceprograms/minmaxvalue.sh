#!/bin/bash
#Random no taking  5 value
#var
minVal=0
maxVal=0
for((i=0;i<5;i++))
do
genRandom[i]=$(( RANDOM%1000))
echo
done

calMinMax()
{
 maxVal=${getRandom[0]}
for((i=0;i<5;i++)) 
do
  (( i > maxVal )) && maxVal=$i
  (( i < minVal )) && minVal=$i
done

}

calMinMax
