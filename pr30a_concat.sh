#!/bin/bash
STR1=$1
STR2=$2
OUT="$1$2"
if [ $# -eq 0 ]
then
	echo "$0 string1 string2"
	exit 1
fi
len=$(expr length $OUT) 
echo "Concatenated string is - $OUT"
echo "String Length is - $len"
