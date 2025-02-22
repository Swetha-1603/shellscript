#!/bin/bash

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPTNAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPTNAME-$TIMESTAMP.log

VALIDATE(){
if [ $1 -ne 0 ]
then 
    echo "$2 is Failure"
    exit 1
else
    echo "$2 is sucess"
    fi
}

if [ $USERID -ne 0 ]
then 
    echo "Please run with root user"
    exit 1
else
    echo "You are a root user"
fi

dnf install mysql -y &>>$LOGFILE
VALIDATE $? "installing MYSQL"

dnf install git -y &>>$LOGFILE
VALIDATE $? "installing Git"