#!/bin/bash
<<COMMENT
Author: "omnamahshivaya"
Date: 10-12-2022
Aim: "To develop automation scripts"
Description: "Setup the shell script"
COMMENT

# To check the  root user or not
USERID=$(id -u)
R="\e[31m"  # Red Color  # it is color codes it will display  more attractive and readable of script
G="\e[32m"  # Green Color
Y="\e[33m"  # Yellow color
NC="\e[0m"  # No color by default

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo -e "$2 ... $R FAILURE $NC"
        exit 1
    else
        echo -e "$2 ... $G SUCCESS $NC"
    fi
}

if [ $USERID -ne 0 ] > /dev/null 2>&1
then
    echo -e  "${R} ERROR:: You must have sudo access to execute this script ${NC}"
    exit 1 #other than 0
fi
# To check the Mysql installed or not

dnf list installed mysql

if [ $? -ne 0 ] > /dev/null 2>&1
then # not installed
    dnf install mysql -y
    VALIDATE $? "Installing MySQL"
else
    echo -e "MySQL is already ... $Y INSTALLED $NC"
fi

# To check the git pacakge installed or not
dnf list installed git

if [ $? -ne 0 ] > /dev/null 2>&1
then
    dnf install git -y
    VALIDATE $? "Installing Git"
else
    echo -e "Git is already ... $Y INSTALLED $NC"
fi