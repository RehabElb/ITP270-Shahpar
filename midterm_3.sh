#!/bin/bash

for i in {1..2}
do

    read -p "Enter the username: " USER_NAME

    read -p "Enter the password: " PASSWORD
    
    #pass_len =["${#PASSWORD}" -lt "8"]
    
    while true;
    do
	if [ "${#PASSWORD}" -lt "8" ]
	then 
    	echo ; echo "Invalid Password. Your password should be 8 or more characters"
    	echo ; 

    	read -p "Enter the password: " PASSWORD
    
    	else 
	break
    	fi
       
    done
    sudo useradd "${USER_NAME}"

    sudo usermod -p "${PASSWORD}" "${USER_NAME}"

   echo "The username: " $USER_NAME
   echo "The password: " $PASSWORD 


done

#cat /etc/passwd
