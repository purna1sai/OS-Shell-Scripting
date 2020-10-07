#!/bin/bash
str=$1
chr=$2
chg=$3
echo -n "The replaced string is "
echo "$str" | tr $chr $chg
echo -n "The number of characters replaced is "
awk -F"${chr}" '{print NF-1}' <<< "${str}"
