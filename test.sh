#! /bin/bash

#This will create and delete an user at the same time.

<<help

***** This is a test file *****

help

#creation of the user

function create_user 

{

echo "<========= Creating new user account =========>"

read -p "enter username:" username

read -sp "enter password:" password

sudo useradd -m $username

echo -e "password\npassword" | passwd $username

echo "<========= New user Created =========>"

}


#deleting added user

function delete_user

{

echo "< ========== Deletion of the user ========= >"

sudo userdel -r $username

}

#confirming if the user is deleted

function confirmation {

if [ $(cat /etc/passwd | grep $username | wc | awk '{print $1}') == 0 ];

then

echo "as wc is 0, user has been deleted"

else 
	echo "as wc is not 0, user still exists"
fi

}

create_user
delete_user
confirmation
