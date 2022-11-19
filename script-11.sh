#!/bin/bash

# script-11 : Show the files in the current directory with their permissions.
# Author    : Mr. Rabbit

echo -e "Listing files in the current directory...\n"

result=$(ls -pl | grep -v /$ | tail -n +2 | sed 's/\s.*:/ /' | sed 's/\s.*\s/ /')
echo "$result"
