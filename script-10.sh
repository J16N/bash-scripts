#!/bin/bash

# script-10 : Show calendar for a year or a month
# Author    : Mr. Rabbit

read -p "Prompt (YYYY MM): " year month
[[ -z "$month" ]] && cal $year && exit 0
cal $year -m $month
