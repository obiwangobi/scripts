#!/bin/bash

<<help

This is to create the new user

help

function create_user

{

echo "<======== creation of the new user ==========>"

read -p "enter the username:" username

read -p "enter the password:" password

sudo useradd -m "$username"

echo -e "$password \n $password" | sudo passwd "$username"

echo "<========= new user created =========>"

}

for (( i=1 ; i<=2 ; i++ ))

do
	create_user
done

