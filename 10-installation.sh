#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "plese run this script with root sccess."
    exit 1 # manually exit if error comos.
else
    echo "You are super user."
fi

dnf install mysql -y

if [ $? -ne 0 ]
then
    echo "Installation of mysql... FAILURE"
    exit 1
else
    echo "Installation of mysql... SUCCESS"
fi

dnf install git -y

if [ $? -ne 0 ]
then
    echo "Installation of git... FAILURE"
    exit 1
else
    echo "Installation of git... SACCESS"
fi

echo "is script proceeding?"