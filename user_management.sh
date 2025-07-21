#! /bin/bash


<<info

file name - create_user.sh and user management

This is a shell script for creating a new user

info

#CEEATING A NEW USER ACCOUNT

echo -e "-------create new user account-------"

echo

read -p "Enter the new username:" username

# to check if the user exists

echo

count=$(cat /etc/passwd | grep $username | wc | awk '{print $1}')

# if the user exists in the system the wc will be 1 or else it will be 0

# created a loop for the name check in the system so that the account cannot be duplicated and script will not stop

while [ "$count" == 1 ];

do

echo -e "username already exists"

echo

read -p "enter a different username:" username

count=$(cat /etc/passwd |grep $username | wc | awk '{print $1}')

done

# once the name is finalized, it will give the option for password and check for the password if they match

read -sp "enter the password:" password

echo

read -sp "confirm the password:" password2

while [ "$password" != "$password2" ];

do 
	
echo "password does not match. Try again"
	
read -sp "confirm the password:" password2

done

sudo useradd -m $username 

echo -e "$password\n$password" | sudo passwd $username

echo -e "------------- user account created for $username ----------------"

# To display the account details of the new username

echo -e "--------- The user $username details are ------------"

cat /etc/passwd | grep $username

# to delete the user

read -p "do you wish to remove the user:" answer

if 
	[ "$answer" == "yes" ];
then

sudo userdel -r $username

else

echo "User has not been removed"
fi

#confirming if the user is deleted


if [ $(cat /etc/passwd | grep $username | wc | awk '{print $1}') == 0 ];

then

echo "user $username has been removed"

else
        echo " user $username still exists"
fi







