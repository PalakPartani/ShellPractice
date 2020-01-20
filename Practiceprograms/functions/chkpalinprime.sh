
#!/bin/bash -x

chkPrime()
{	
	flag=0
	for ((i = 2; i <= $num / 2; ++i)) 
	do
        	if (($num % $i == 0)) 
		then
            		flag=1
            		break
   	 	fi
	done
	if (( $num==1 )) 
	then
       		echo "1 is neither prime nor composite "
   	elif (( $flag==0 ))
	then
            echo "is a prime number."
        else
            echo "is not a prime number."
	fi
	chkPalin
}

chkPalin()
{
	for ((i=0;i<$len;i++))
	do
		r=$(($num%10));    
		sum=$(($((sum*10))+r));    
		num=$(($num/10));  
	done
	if (( $temp==$sum ))  
	then
		echo "$temp is palindrome"
	else
		echo "$temp is not Palindrome"
	fi
	#chkPrime
	chkPalinPrime
}

chkPalinPrime()
{

for ((i = 2; i <= $temp / 2; ++i)) 
	do
        	if (($temp % $i == 0)) 
		then
            		flag=1
            		break
   	 	fi
	done
	if (( $temp == 1 )) 
	then
       		echo "1 is neither prime nor composite "
   	elif (($flag == 0))
	then
            echo "is a prime number."
        else
            echo "is not a prime number."
	fi
}
read -p "Enter a number to check " num
temp=$num
len=${#num}
chkPrime


