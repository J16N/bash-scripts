#!/bin/bash

# script-05 : Find palindrome number from list
# Author    : Mr. Rabbit

read -p "Enter numbers (space seperated): " -a numbers

echo -e "\nPalindrome Numbers are as follows: "

for n in ${numbers[@]}; do
    rev_n=$(rev <<< $n)
    if (( n == rev_n )); then echo -n "$n "; fi
done
