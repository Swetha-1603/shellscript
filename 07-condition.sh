#!/bin/bash

NO=$1

if [ $NO -gt 10 ]
then 
    echo "given number $NO is greater than 10"
else
    echo "Given number $NO is less than 10"
fi