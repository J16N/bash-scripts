#!/bin/bash

# script-09 :  Show current time and date in different format
# Author    :  Mr. Rabbit

echo -e "Print today's date and time.\n"

echo "Select date format: "
echo "<1> DD-MM-YY"
echo "<2> DD/MM/YY"
echo "<3> DD-MM-YYYY"
echo "<4> DD/MM/YYYY"
echo -e "<5> Day DD Month, YYYY\n"

read -p "Enter your choice: " date_choice

echo -e "\nSelect time format: "
echo "<1> 12 hour format"
echo -e "<2> 24 hour format\n"

read -p "Enter your choice: " time_choice
echo

case "$date_choice" in
    1) date_string=$(date '+%d-%m-%y') ;;
    2) date_string=$(date '+%D') ;;
    3) date_string=$(date '+%d-%m-%Y') ;;
    4) date_string=$(date '+%d/%m/%Y') ;;
    5) date_string=$(date '+%A %d %B, %Y') ;;
    *) echo "Incorrect date format." ;;
esac

case "$time_choice" in
    1) time_string=$(date '+%I:%M %p') ;;
    2) time_string=$(date '+%H:%M') ;;
    *) echo "Incorrect time format." ;;
esac

[[ -n "$date_string" ]] && echo "Date: $date_string"
[[ -n "$time_string" ]] && echo "Time: $time_string"
