 #!/bin/bash -x

read -p "Enter month " month
read -p "Enter day " day
read -p "Enter year " year

calDay()
{

y0=$(( $year - $(( $((14 - $month )) /12 )) ))
x=$(($y0 + $y0 / 4 - $y0 / 100 + $y0 / 400 ))
m0=$(( $month + 12 * $(( $(( 14 - $month)) / 12 )) - 2 ))
d0=$(( $(( $day + $x +31 * $m0 /12)) % 7 ))
if [[ $do -eq 0 ]]
then
echo"Sunday"

elif [[ $do -eq 1 ]]
then
echo"Monday"

elif [[ $do -eq 2 ]]
then
echo"Tuesdsay"

elif [[ $do -eq 3 ]]
then
echo"Wednesday"

elif [[ $do -eq 4 ]]
then
echo"Thusday"

elif [[ $do -eq 5 ]]
then
echo"Friday"

else

echo"Saturday"
fi

}

calDay
