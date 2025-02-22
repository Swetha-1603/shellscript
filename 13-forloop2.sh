#!/bin/bash

# installations using for loop

USERID=$(id -u)
SCRIPTNAME=$(echo $0 | cut -d "." -f1)
TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE=/tmp/$SCRIPTNAME-$TIMESTAMP.log

if [ $USERID -ne 0 ]
then
    echo "Run with root user"
    exit1
else
    echo "Your super user"
fi 

VALIDATE(){
if [ $1 -ne 0 ]
then
    echo "$2 FAILURE"
    exit1
else
    echo "$2 Success"
fi

}

for i in $@
do
    echo "Package to install: $i"
    dnf list installed $i &>>$LOGFILE
    if [ $? -eq 0 ]
then 
    echo "$i aleady installed , skipping"
else
    dnf install $i -y &>>$LOGFILE
    VALIDATE $? "installation of $i"
fi
done

