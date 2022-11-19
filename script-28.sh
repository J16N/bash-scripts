#!/bin/bash

# script-28 : Check whether files or directories
# Author    : Mr. Rabbit

usage() 
{
    echo "usage: ${0##*/} arguments (filenames or directories)"
    exit 1
}

[[ -z "$1" ]] && usage

echo -e "Checking...\n"

for name in $@; do
    if [[ -d $name ]]; then
        echo "$name is a directory."
    elif [[ -f $name ]]; then
        echo "$name is a file."
    else
        echo "$name is neither a file nor directory."
    fi
done
