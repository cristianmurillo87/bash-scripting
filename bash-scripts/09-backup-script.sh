#!/bin/bash

# Check that the user has entered exactly two arguments
if [ $# -ne 2 ]
then
  echo "Usage: 09-backup-script.sh <source_directory> <target_directory>"
  echo "Please try again."
  exit 1
fi

# Check to see if rsync is installed
if ! command -v rsync > /dev/null 2>&1
then
  echo "This script required rsync to be installed."
  echo "Please use your distribution's package manager to install it and try it again."
  exit 2
fi

current_date=$(date +%Y-%m-%d)

rsync_options="-avb --backup-dir $2/$current_date --delete --dry-run"

$(which rsync) $rsync_options $1 $2/current >> backup_$current_date.log