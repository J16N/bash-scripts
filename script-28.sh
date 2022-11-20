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
        tree $name
        
    elif [[ -f $name ]]; then
        echo "$name is a file."
        lines=$(cat $name | wc -l)
        echo "No. of lines: $lines"
        permission=$(ls -l $name | cut -d ' ' -f 1 | cut -c 2-4)
        echo "User Permission: $permission"
        
        if [[ "${permission:1:1}" == "w" ]]; then
            echo "The user has write permission."
            echo "Modifying file permission..."
            chmod u-w $name
            permission=$(ls -l $name | cut -d ' ' -f 1 | cut -c 2-4)
            echo "User Permission: $permission"
        fi
        
    else
        echo "$name is neither a file nor directory."
    fi
    
    echo
done
