#!/bin/sh
# finder script for assignment 1 
# Author: Sunday

filesdir=$1 #first argument is a directory
searchstr=$2


if [ $# != 2 ]
then
    echo "Incorrect number of Arguments, provide a directory then a string."
    exit 1
fi

cd $filesdir

if [ $? == 1 ]
then 
    echo The Specified directory doesnt exist
    exit 1
fi

filecount=$(find $filesdir -type f | wc -l)
linecount=$(grep  -r --directories=skip  $searchstr $filesdir/* | wc -l)
echo The number of files are $filecount and the number of matching lines are $linecount

