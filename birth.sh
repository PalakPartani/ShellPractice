#!/bin/bash -x
#declared dictionary
declare -A dict
#declared array
month=("JAN" "FEB" "MAR" "APR" "MAY" "JUN" "JUL" "AUG" "SEP" "OCT" "NOV" "DEC")
#loop will iterate 50 times for 50 individuals to calculate random values in 12 months.
for (( i=0;i<50;i++ ))
do
	getRand=$(( RANDOM%12))
	dict[$i]=$getRand
done
#printing index
#echo "${!dict[@]}"	
#month name is key and value is the rank of person betweeen 1 to 50
for (( i=0;i<${#month[@]};i++ ))
do
     echo "**${month[$i]}**"
    for (( j=0;j<${#dict[@]};j++ ))
    do
        if (( ${dict[$j]} == $i ))
        then
            echo "Person $j"
        fi
    done
done
