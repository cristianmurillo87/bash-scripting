#!/bin/bash

# echo "You entered the argument: $1"


# Example: ./08-arguments.sh /etc
# Total elements found in the folder given as an argument
lines=$(ls -lh $1 | wc -l)

# $# returns the number of arguments that have been passed as arguments in the command line
if [ $# -ne 1 ]
then
  echo "This script required exactly one directory passed to it."
  echo "Please try again."
  exit 1
else
  echo "You have $(($lines-1)) objects in the $1 directory."
fi