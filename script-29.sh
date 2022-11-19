#!/bin/bash

# script-29 : Get number of files in current directory and print the largest file
# Author    : Mr. Rabbit

files=$(find . -maxdepth 1 -type f | wc -l)
echo -e "Total files: $files\n"
echo "File having maximum size: "
ls -Shl * | head -n 1
