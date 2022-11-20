#!/bin/bash

# script-13 : Find armstrong number from the list
# Author    : Mr. Rabbit

read -p "Enter numbers (space seperated): " -a numbers

echo -e "\nThe armstrong numbers are as follows: "

for n in ${numbers[*]}; do
    d=${#n}
    ans=0
    for ((i = 0; i < d; ++i)); do
        digit=${n:$i:1}
        ans=$((ans + $digit ** d))
    done
    
    if ((ans == n)); then echo -n "$n "; fi
done
