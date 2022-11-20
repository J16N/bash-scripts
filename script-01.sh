#!/bin/bash

# script-01 : Print sequence x + x^2/2! + x^4/4! + ...
# Author    : Mr. Rabbit

factorial()
{
    result=1
    for ((i = $1; i > 1; --i)); do
        result=$(($1 * result))
    done
    echo $result
}

echo "Sequence: x + x^2/2! + x^4/4! + ... upto n terms"
read -p "Enter x: " x
read -p "Enter n: " n

ans="$x"
for ((i = 1, j = 2; i < n; ++i, j+=2)); do
    fac=$(factorial $j)
    ans=$(echo "scale=2; $ans + $x ^ $j / $fac" | bc)
done

echo -e "Ans: $ans"
