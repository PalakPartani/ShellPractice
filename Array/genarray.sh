#!/bin/bash -x
for ((i=0;i<=10;i++))
do
	genRand[i]=$((RANDOM%1000))
done
flarge=0
slarge=0
fsmall=0
ssmall=0


for((i=0;i<10;i++))
do
	if (( ${genRand[$i]} > $flarge))
	then
		temp=$flarge
		flarge=${genRand[$i]}
		slarge=$temp
	elif(( ${genRand[$i]} > $slarge && ${genRand[$i]} != $flarge ))
	then
		slarge=${genRand[$i]}
	fi
done

echo "array" ${genRand[@]}
echo "Second largest " $slarge

for((i=0;i<10;i++))
do
	if (( ${genRand[$i]} < $fsmall))
	then
		temp=$fsmall
		fsmall=${genRand[$i]}
		ssmall=$temp

	elif(( ${genRand[$i]} < $ssmall && ${genRand[$i]} != $ssmall ))
	then
		ssmall=${genRand[$i]}
fi
done
echo "array" ${genRand[@]}
echo "Second smallest " $ssmall








