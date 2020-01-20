#!/bin/bash 
if [ $# -eq 0 ]
then
     echo -n "Enter a String: "
     read pstr
else
     pstr=$*
fi

# Remove all punctuations from input string and convert upper case to
# lower or lower case to upper.

String="$(echo $pstr | sed 's/[^[:alnum:]]//g' | \
tr '[:upper:]' '[:lower:]')"

Flag=0

# Find length of the string.
len=${#String}

#You can also calculate string length using bellow commands.
#len=`echo $str | wc -c`
#len=$((len-1))

#get the mid value up to which the comparison would be done.
mid=$((len/2))

for ((i=1;i<=mid;i++))
do
   c1=`echo $String|cut -c$i`           # extracts from beginning
   c2=`echo $String|cut -c$len`         # extracts from last

   if [ $c1 != $c2 ]
   then
        Flag=1


        break 2             # break N breaks out of N levels of loop.
   fi

   let len--
done

if [ $Flag -eq 0 ]
then
     echo "\"$pstr\" is a Palindrome"
else
     echo "\"$pstr\" is not a Palindrome"
fi
