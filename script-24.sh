#!/bin/bash

# script-29 : Search elements in an array
# Author    : Mr. Rabbit

read -p "Enter array elements (space-seperated): " -a arr
read -p "Enter element to be searched: " el

echo -e "\nSearching..."

for i in ${!arr[@]}; do
    if (( arr[i] == el )); then
        echo "Found $el at index $i."
        exit
    fi
done

echo "Could not find $el in the given array."
