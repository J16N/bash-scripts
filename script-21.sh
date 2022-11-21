#!/bin/bash

# script-21 : Draw Circle
# Author    : Mr. Rabbit

clear
read -p "Radius: " rad

width=$(tput cols)
height=$(tput lines)
cx=$((width / 2))
cy=$((height / 2))

for ((i = 0; i < 360; i += 10)); do
    angle=$(echo "scale=4; $i * 22 / (7 * 180)" | bc)
    x=$(echo "scale=4; $cx + $rad * c($angle)" | bc -l)
    y=$(echo "scale=4; $cy + $rad * s($angle)" | bc -l)
    x=$(echo "scale=0; $x / 1" | bc)
    y=$(echo "scale=0; $y / 1" | bc)
    
    tput cup $y $x
    echo "*"
done

tput cup $(tput lines) 0
