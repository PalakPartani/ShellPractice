#!/bin/bash -x
#taking value from user
read -p "Enter a number to convert : " numConv

echo "Press 1 for Feet to inch "
echo "Press 2 for Feet to Meter "
echo "Press 3 for Inch to Feet "
echo "Press 4 for Inch to Meter "
read -p "Enter a number : " numChoice
case $numChoice in
1)
res1=`expr $numConv*12 | bc`
echo "Conversion from Feet to inch " $res1;;
2)
res2=`expr $numConv*0.3804 |bc`
echo "Conversion from Feet to Meter " $res2;;
3)
res3=`expr $numConv*0.8333 |bc`
echo "Conversion from Inch to Feet " $res3;;
4)res4=`expr $numConv*0.0254 | bc `
echo "Conversion from Inch to Meter " $res4;;
*)
echo "Enter valid choice .."
esac
