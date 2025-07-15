#! /bin/bash


<< info

This file will install necessary package for the system

info

echo "installing packages"

sudo apt-get install nginx -y > /dev/null

sudo apt-get update > /dev/null

sudo apt-get install aptitude -y > /dev/null

sudo apt-get install docker.io -y > /dev/null

sudo apt-get upgrade > /dev/null

echo "installation completed - system ready to use"
