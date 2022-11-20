#!/bin/bash

# script-17 : Age Calculator
# Author    : Mr. Rabbit

invalid()
{
    echo "Invalid date: $1"
    exit 1
}

read -p "Birthday (DD/MM/YYYY): " bd

if [[ "$bd" =~ ^[[:digit:]]{2}\/[[:digit:]]{2}\/[[:digit:]]{4}$ ]]; then
    day=${bd:0:2}
    month=${bd:3:2}
    year=${bd:6:4}
    
    if (( day > 31 || day < 1 )); then invalid $day; fi
    if (( month > 12 || month < 1 )); then invalid $month; fi
    
    ds="$year/$month/$day"
    if [[ "$(date -d "$ds" +%Y/%m/%d)" != "$ds" ]]; then exit 1; fi
    
    tdays=$(( ($(date '+%s') - $(date -d $ds '+%s')) / 86400 ))
    tyears=$(( tdays / 365 ))
    tdays=$(( tdays % 365 ))
    tmonths=$(( tdays / 30 ))
    tdays=$(( tdays % 30 ))
    
    echo "Your are $tyears years $tmonths months $tdays days old."
    
else
    echo "Format did not match."
    exit 1
fi
