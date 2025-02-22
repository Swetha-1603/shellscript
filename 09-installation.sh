#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then 
    echo "Please run the script with root access"
    exit 1
else
    echo "You are super user"
fi

dnf install mysql -y

if [ $? -ne 0 ]
then 
    echo "installation of mysql is FaILURE"
    exit 1
else 
    echo "installation of mysql is SUCCESS"
fi
