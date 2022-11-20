#!/bin/bash

# script-02 : Print sequence 1 + (x/2)^2 – (x/2)^3 + (x/2)^4 – (x/2)^5 + ...
# Author    : Mr. Rabbit

echo "Sequence: 1 + (x/2)^2 – (x/2)^3 + (x/2)^4 – (x/2)^5 + ... upto n terms"
read -p "Enter x: " x
read -p "Enter n: " n

ans=1
temp=$(echo "scale=3; $x / 2" | bc)

for ((i = 1, j = 0; i < n; ++i, ++j)); do
    ans=$(echo "scale=3; $ans + $temp ^ ($i + 1)" | bc)
done

printf "Ans: %.3f" "$ans"
