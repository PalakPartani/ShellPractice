
#!/bin/bash
for (( i=0;i<10;i++ ))
do 
arr[$i]=$((RANDOM%1000))
done

if ((${arr[0]}  < ${arr[1]} ))
then
firstsmall=${arr[0]}
secondsmall=${arr[1]}
else
secondsmall=${arr[0]}
firstsmall=${arr[1]}
fi

for (( i=2;i<10;i++ ))
do
if (( ${arr[$i]} < $firstsmall ))
then
secondsmall=$firstsmall
firstsmall=${arr[$i]}
elif (( ${arr[$i]} < $secondsmall && ${arr[$i]} != $firstsmall ))
then
secondlarge=${arr[$i]}
fi

done
echo "${arr[@]}"
echo "Second Smallest: $secondsmall"
