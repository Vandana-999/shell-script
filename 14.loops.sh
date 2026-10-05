#!/bin/bash

USER=$(id -u)
LOG_DIR=/var/log/Shell-Script
LOG_File=/var/log/Shell-Script/$0.log

if (($USER != 0)); then
   echo "please use root access to run the command"  |tee -a $LOG_File
   exit 1
fi

mkdir -p $LOG_DIR
VALIDATE()
{
  echo "$1"
  if(($1==0)); then 
    echo "$2 is SUCCESS" |tee -a $LOG_File
  else
    echo "$2 is FAILURE " |tee -a $LOG_File
    exit 1
  fi
}

for i in $@
do
  dnf list installed $i
  if (($? !=0))
    echo "Package not installed, Installing now"
    dnf install $i -y
    VALIDATE $? "Installing $i"
  else
    echo "Package already Installed .. skipping"
  fi
done
