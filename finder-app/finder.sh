#!/bin/bash

echo "Script started"

if [ $# -eq 2 ]
then
   directory=$1
   stringToSearch=$2
   if [ -d $directory ]
   then
      x_numberOfFiles=`find $directory -type f | wc -l`
      y_matchingLines=`grep -r $stringToSearch $directory | wc -l`
      echo "The number of files are ${x_numberOfFiles} and the number of matching lines are ${y_matchingLines}"
   else
      echo "Directory does not exists"
      exit 1
   fi
else
   echo "ERROR: Invalid Number of Arguments"
   echo "Total number of  arguments should be 2."
   exit 1
fi

