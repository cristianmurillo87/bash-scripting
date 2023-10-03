#!/bin/bash

package=htop

sudo apt install $package

# $? returns the exit code of the last run command.
if [ $? -eq 0]
then
  echo "The instalattion of $package was successful."
  echo "The new command is available here:"
  which $package
else
  echo "$package failed to install."
fi

# ===========================================================================

# Checking for the existence of a directory

directory=/etc

if [ -d $directory ]
then 
  echo "$directory exists."
else
  echo "$directory doesn't exist."
fi

echo "The exit code for this script run is $?."