#!/bin/bash

echo "Script started"

if  [ $# -eq 2 ]
then
   fullFileName=$1
   stringToAdd=$2
   directory=$(dirname "$fullFileName")

   if [ ! -d "$directory" ]
   then 
      mkdir -p "$directory"
   fi
   echo $stringToAdd > $fullFileName
   if [ $? -eq 0 ]
   then
      echo "File created"
   else
      echo "ERROR: File couldnt be created"
      exit 1
   fi
else
   echo "ERROR: Invalid Number of Arguments"
   echo "Total number of arguments should be 2."
   exit 1
fi
