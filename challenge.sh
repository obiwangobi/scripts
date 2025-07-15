#! /bin/bash

<<info 

This is a challange file for the shell script which 

1) creates user

2) deletes user

3) password reset

4) list user account and information

5) help and usage information 

info

# creating a new user account

echo "<============= create a new user account ==============>"

read -p "enter the new username:" username

count=$(cat /etc/passwd | grep $username | wc | awk '{print $1}')

if 
	[ $count == 0 ];
then

read -sp "enter the password for username:" password

sudo useradd -m $username 

echo -e "$username:$password" | sudo passwd "$username"  

echo "<============= new user created for $username ==============>"

else
	echo "!!!!!!!!!!! username already esists !!!!!!!!!!!!"

fi	

# PASSWORD RESET

read -sp "enter the new password for the $username:" password1

if [ $password == $password1 ];
then
	echo -e "please enter a different password"
else
	
echo -e "$password1\n$password1" | sudo passwd $username

echo "password changed successfully"

fi


# USER ACCOUNT INFORMATRION 

cat /etc/passwd | grep $username 


# removal of the created user

sudo userdel -r $username

count=$(cat /etc/passwd | grep $username | wc | awk '{print $1}')

if [ $count == 0 ]

then
	echo "<============= USER HAS BEEN DELETED =============>"

else
	echo "<============= USER STILL EXISTS ===============>"

fi

