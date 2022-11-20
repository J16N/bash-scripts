#!/bin/bash

# script-04 : Find LCM of list of numbers
# Author    : Mr. Rabbit

gcd()
{
    c=$(($2 % $1))
    if (( c > 0 )); then
        gcd $c $1
    else
        echo $1
    fi
}

lcm()
{
    gcd_=$(gcd $1 $2)
    echo $(( $1 * $2 / $gcd_ ))
}

echo "Get L.C.M of list of numbers."
read -p "Enter numbers (space-seperated): " -a numbers

ans=${numbers[0]}
for ((i = 1; i < ${#numbers[*]}; ++i)); do
    ans=$(lcm $ans ${numbers[i]})
done

echo -e "L.C.M: $ans"
