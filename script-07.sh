#!/bin/bash

# script-07 : Sort list of numbers
# Author    : Mr. Rabbit

read -p "Enter elements (space seperated): " -a nums
echo "Array: ${nums[*]}"

for ((i = 1; i < ${#nums[*]}; ++i)); do
    for ((j = i; j > 0; --j)); do
        if ((${nums[j-1]} > ${nums[j]})); then
            temp=${nums[j]}
            nums[$j]=${nums[j-1]}
            nums[$((j-1))]=$temp
        fi
    done
done

echo "Sorted Array: ${nums[*]}"
