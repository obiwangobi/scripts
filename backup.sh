#!/bin/bash

<<info

This file is for the script of periodic backup

eg backup <source> <desstination>

info

src=$1
dest=$2

timestamp=$(date '+%d-%m-%y')

zip -r "$dest/backup-$timestamp.zip" $src > /dev/null

echo "backup has been completed"



