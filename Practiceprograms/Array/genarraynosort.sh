#!/bin/bash -x
for ((i=0;i<=10;i++))
do
	genRand[i]=$((RANDOM%1000))
	done
flarge=genRand[0]
slarge=genRand[0]
fsmall=genRand[0]
ssmall=genRand[0]


for((i=0;i<10;i++))
do
	if ((${genRand[$i]}>flarge))
	then
		slarge=$flarge
		flarge=${genRand[$i]}
	elif ((${genRand[$i]}>slarge && ${genRand[$i]}!=flarge))
	then
		slarge=${genRand[$i]}
fi

done
echo "array" ${genRand[@]}
echo "Second largest " $slarge

for ((i=0;i<=10;i++))
do
	genRand[i]=$((RANDOM%1000))
	done


for((i=2;i<10;i++))
do
	if ((${genRand[$i]}<$fsmall))
	then
		ssmall=$fsmall
		fsmall=${genRand[$i]}
	elif ((${genRand[$i]}<$ssmall && ${genRand[$i]}!=$fsmall))
	then
		ssmall=${genRand[$i]}
fi

done
echo "array" ${genRand[@]}
echo "Second smallest " $ssmall

