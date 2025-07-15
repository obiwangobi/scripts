#! /bin/bash

<<info 

This is the script for installing any 
package that you enter in the argument

eg ./installer.sh nginx
./installer.sh docker.io
./installer.sh unzip

info

echo "installing $1"

sudo apt-get update

sudo apt-get install $1 - y

echo "installation completed"



