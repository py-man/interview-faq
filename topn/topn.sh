#!/bin/bash
##Take a file name and Number as Arguments
##Parse the file and return the top(Number) Highest first
##Assumption that output should be unique numbers only

if [ -z "$1" ] || [ -z "$2" ]; then
    echo "Not enough or No arguments supplied"
    echo "Supply FileName and Number of lines to Display top(N)"
    exit 1
else
   if [ -f $1 ]; then 
     echo "File:$1 [exits]" 
   else
     echo "File: $1 Does not Exist or Cant be found"
     exit 1
   fi
fi

FileName=$1
Number=$2
echo "Outputting top($Number) Numbers Highest to Lowest"
echo "#################################################"
cat $FileName |sort -n -r |uniq| head -$Number
