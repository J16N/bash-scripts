#!/bin/bash

# script-25 : Different array operations
# Author    : Mr. Rabbit

# read array from user input
read -p "Enter array elements (space seperated): " -a array
echo -e "\nThe elements of the array are: "

# Loop through the array element
for i in ${array[@]}; do
    # Access array elements
    echo -n "$i "
done

# access the length of the array
echo -e "\nLength: ${#array[*]}"

# modify the element in the array
echo
read -p "Index: " idx
read -p "Value: " val
echo "Modifying element at index $idx..."
array[$idx]=$val

# print the array as a whole
echo "The modified array is: "
echo "${array[@]}"
