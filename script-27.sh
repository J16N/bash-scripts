#!/bin/bash

# script-27 : Broadcast weather
# Author    : Mr. Rabbit

usage()
{
    echo "usage: ${0##*/} weather-file"
    exit 1
}

[[ -z "$1" ]] && usage

printf "Day\t\tTemperature\tWeather\n\n"

while read day temp; do
    if (($temp >= 0 && $temp < 15 )); then weather="Very Cold";
    elif (($temp >= 15 && $temp < 25)); then weather="Cold";
    elif (($temp >= 25 && $temp < 35)); then weather="Hot";
    else weather="Very Hot"; fi
    
    printf "%-10s\t%-.2f\t\t%s\n" "$day" "$temp" "$weather"    
done < <(cat $1 | tail -n +2)
