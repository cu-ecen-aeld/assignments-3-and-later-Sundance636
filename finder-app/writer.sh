#!/bin/sh
# writer script for assignment 1 
# Author: Sunday

writefile=$1 #first argument is a directory
writestr=$2


if [ $# != 2 ]
then
    echo "Incorrect number of Arguments, provide a directory then a string."
    exit 1
fi

mkdir -p $writefile
rmdir $writefile
touch $writefile && echo $writestr > $writefile

if [ $? == 1 ]
then 
    echo Could not create or overwrite file.
    exit 1
fi