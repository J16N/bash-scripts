#!/bin/bash

# script-16 : Check whether the year is leap year or not
# Author    : Mr. Rabbit

read -p "Year: " year

if ((year % 100 == 0 && year % 400 == 0)); then
    echo "$year is a leap year."
    
elif ((year % 4 == 0 && year % 100 != 0)); then
    echo "$year is a leap year."
    
else
    echo "$year is not a leap year."
fi
