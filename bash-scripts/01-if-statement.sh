#!/bin/bash

pogramm=/usr/bin/htp

if [ -f $pogramm ]
then
  echo "$pogramm is available, let's run it..."
else
  echo "$pogramm is NOT available, installing it..."
  sudo apt update && sudo apt install -y htop
fi



# Alternative to the above statement using the "command" command.
# See that the bracket notation is not used here since they
# are an implicit way of using the test command.
# if command -v $command
# then
#   echo "$pogramm is available, let's run it..."
# else
#   echo "$pogramm is NOT available, installing it..."
#   sudo apt update && sudo apt install -y htop
# fi

$pogramm


