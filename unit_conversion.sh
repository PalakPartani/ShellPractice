#!/bin/bash -x

inchToFeet=$(( 42/12 ))
echo "Answer : " $inchToFeet
read -p " Enter length " length
read -p " Enter Breadth"  breadth

calArea()
{
 area=`expr $length*$breadth*0.092|bc`
 echo " Area of a rectangle "$area
}
calArea
areaOf25rect=`expr $area*25*0.00029 | bc`
echo " Displaying area for 25 plots $areaOf25rect"
