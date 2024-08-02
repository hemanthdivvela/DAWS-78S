#!/bin/bash
USERID=$(id -u) 
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log
R="\e[31m"
G="\e[32m"
N="\e[0m"
echo "script started excuting at: $TIMESTAMP"

VALIDATA(){
    if [ $1 -ne 0 ]
    then 
        echo -e "$2...$R FAILURE $N"
        exit 1
    else
        echo -e "$2...$G SUCCESS $N"
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

dnf install dockerr -y &>>$LOGFILE
VALIDATA $? "Installing Docker"

