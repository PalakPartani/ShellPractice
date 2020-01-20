#!/bin/bash 
#declared dictionary
declare -A dice
for ((i=0;i<=6;i++))
do
	dice[genRand]=$(( ( RANDOM % 6 )  + 1 ))
	echo "key : $i"
	echo "Value :" ${dice[@]}	
dice[i]=$(($genRand[$i]))
done

#initialize dice
dice=([0]=0 [1]=0 [2]=0 [3]=0 [4]=0 [5]=0)

#when we dont know till how many occurences the loop will iterate so while loop used.
while (( 1 ))
do
	 k=$(( RANDOM%6 ))
	printf "$k"
	if (( ${dice[0]} == 10 || ${dice[1]} == 10 || ${dice[2]} == 10 || ${dice[3]} == 10 || ${dice[4]} == 10 || ${dice[5]} == 10 ))
	then
		break
	else
		dice[$k]=$(( ${dice[$k]} + 1))
	fi
done

echo "${dice[@]}"


#max
maxNo=${dice[0]}
minNo=${dice[0]}
for((i=0;i<6;i++)) 
do
	if (( ${dice[$i]} > $maxNo))
	then
	value=${dice[$i]}
	max=$((i+1))
	fi
done

echo "Maximum no "$max
#min

for((i=0;i<6;i++)) 
do
	if (( ${dice[$i]} < $minNo))
	then
	minNo=${dice[$i]}
	min=$((i+1))
	fi
done

echo "Minimum no" $min

