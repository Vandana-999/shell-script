USER=$(id -u)
LOG_DIR=/var/log/Shell-Script
LOG_File=/var/log/Shell-Script/$0.log

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

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

for Package in $@
do
  dnf list installed $Package &>> $LOG_File
  if (($? !=0)); then
    echo "$Package not installed, $Y Installing now $N"
    dnf install $Package -y &>> $LOG_File
    VALIDATE $? "Installing $Package"
  else
    echo "$Package already Installed .. $Y skipping $N"
  fi
done