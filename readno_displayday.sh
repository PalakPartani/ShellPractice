#!/bin/bash -x
read -p "Enter no " num

numLen=${#num}
if [[ $numLen -eq 1 ]]
then
   if [[ $num -eq 1 ]]
   then
 	 echo "Mon"
   elif [[ $num -eq 2 ]]
   then
    echo "tue"
   elif [[ $num -eq 3 ]]
    then    
    echo "wed"
   elif [[ $num -eq 4 ]]
    then    
    echo "thus"
   elif [[ $num -eq 5 ]]
    then    
    echo "fri"
   elif [[ $num -eq 6 ]]
   then
   echo "Sat"
   elif [[ $num -eq 7 ]]
   then 
   echo "sun"
 else
    echo "Enter between 1 to 7"
fi
else
echo "Enter within range"
fi	
