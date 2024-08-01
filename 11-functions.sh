#!/bin/bash

USERID=$(id -u) 
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log

VALIDATA(){
    if [ $1 -ne 0 ]
    then 
        echo "$2...FAILURE"
        exit 1
    else
        echo "$2...SUCCESS"
    fi

}

if [ $USERID -ne 0 ]
then
    echo "plese run this script with root sccess."
    exit 1 # manually exit if error comos.
else
    echo "You are super user."
fi

dnf install mysql -y &>>$LOGFILE
#$? is exit function
VALIDATA $? "Installing MySQL"

dnf install git -y &>>$LOGFILE
#$? is exit function
VALIDATA $? "Installing GIT"

