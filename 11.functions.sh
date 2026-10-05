#!/bin/bash

USER=$(id -u)

if (($USER != 0)); then
   echo "please use root access to run the command"
   exit 1
fi

VALIDATE()
{
  if(($1==0)); then 
    echo "$2 is SUCCESS"
  else
    echo "$2 is FAILURE "
    exit 1
  fi
}

echo installing ngnix
dnf install nginx -y

VALIDATE $? "Installing nginx"

dnf install mysql -y

VALIDATE $? "Installing mysql"

dnf install nodejs -y

VALIDATE $? "Installing nodejs"