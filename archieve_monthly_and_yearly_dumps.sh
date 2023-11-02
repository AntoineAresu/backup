#!/bin/bash

. ./variables.sh
echo 'Checking if dump should be archived';

#Check if first day of month
if [ $(date +%d) == "01" ]
then
  #Check if first of january
  if [ $(date +%m) == "01" ]
  then
    echo 'First day of year, moving the dump top monthly folder';
    mkdir -p "$YEARLY_BACKUP_FOLDER"
    cp "$DUMP_FILE_PATH" "$YEARLY_BACKUP_FOLDER"
  else
    echo 'First day of month, moving the dump top monthly folder';
    mkdir -p "$MONTHLY_BACKUP_FOLDER"
    cp "$DUMP_FILE_PATH" "$MONTHLY_BACKUP_FOLDER"
  fi
  else
    echo 'Regular dump, keep it in regular folder';
fi
