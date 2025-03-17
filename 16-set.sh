#!/bin/bash

set -e
failure(){
    echo "Filed at $1 : $2"
}

trap 'failure ${LINENO} "$BASH_COMMAND"' ERR

USERID=$(id -u)

if [ $USERID -ne 0 ]
then 
    echo "Please run this script with root access."
    exit 1
else 
    echo "You are a super user."
fi 

dnf install mysqfff -y

echo "is script proceeding"
