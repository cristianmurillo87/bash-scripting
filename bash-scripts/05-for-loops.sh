#!/bin/bash

# for n in {1..10}
# do
#   if [ $(( $n %2 )) -eq 0 ]
#   then
#     echo $n
#     sleep 1
#   fi
# done

# echo "This is outside of the for loop."


directory=/var/log
destination=./logfiles

if [ -d $directory ] && [ ! -d $destination ]
then 
  for file in $directory/*.log
  do
    echo "Copying file: $file"
    cp $file ./logfiles
  done
fi


for copied_file in $destination/*.log
do
  if [ ! -f $copied_file.tar.gz ]
  then
    tar -czvf $copied_file.tar.gz $copied_file 1>> /dev/null
    echo "Created: $copied_file.tar.gz"
  else
    echo "Removing: $copied_file.tar.gz"
    rm $copied_file.tar.gz
  fi
done