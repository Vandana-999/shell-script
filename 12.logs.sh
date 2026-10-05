#!/bin/bash

USER=$(id -u)
LOG_DIR=/var/log/Shell-Script
LOG_File=/var/log/Shell-Script/$0.log

if (($USER != 0)); then
   echo "please use root access to run the command" &>> $LOG_File
   exit 1
fi

VALIDATE()
{
  echo "$1"
  if(($1==0)); then 
    echo "$2 is SUCCESS"
  else
    echo "$2 is FAILURE "
    exit 1
  fi
}


dnf install nginx -y &>> $LOG_File

VALIDATE $? "Installing nginx"

dnf install mysql -y &>> $LOG_File

VALIDATE $? "Installing mysql"

dnf install nodejs -y &>> $LOG_File

VALIDATE $? "Installing nodejs"