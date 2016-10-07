#!/bin/bash
if [ $1 != "" ] && [ -d /Volumes/$1 ]; then # If parameter not empty and disk exists
  echo Backing up music...
  DATE=$(date "+%b-%d-%Y")
  USER=$(whoami)
  if [[ ! -d /Volumes/$1/Music\ Backups ]]; then # Add 'Music Backups' file if one does not exist
    mkdir /Volumes/$1/Music\ Backups/
  fi
  cd /Volumes/$1/Music\ Backups/
  mkdir $DATE
  sudo rsync -vaE --progress /Users/$USER/Music/iTunes/iTunes\ Media/Music  /Volumes/$1/Music\ Backups/$DATE
  echo Backup successful!
else
  echo Backup failed. Please ensure the drive name is correct.
fi
