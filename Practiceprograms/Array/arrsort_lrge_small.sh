
#!/bin/bash -x

for (( i=0;i<10;i++ ))
do 
arr[$i]=$((RANDOM%1000))
done
n=10
for((i=1;i<10;i++))
do
temp=${arr[i]}
j=$((i - 1))
while [[ ((j -ge 0 ))   &&  $temp -lt ${arr[j]} ]]
do
arr[j + 1]=${arr[j]}
j=$((j - 1));
done
arr[(( j + 1 ))]=$temp
done

echo "${arr[@]}"

echo "Second Largest: ${arr[8]}"
echo "Second Smallest: ${arr[1]}"
