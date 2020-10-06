#!/bin/bash
file="$1"
SPELL="/usr/bin/ispell"
if [ $# -eq 0 ]
then
	echo "Syntax: $(basename $0) file"
	exit 1
fi
if [ ! -f $file ]
then
	echo "Error - $file not a file!"
	exit 2
fi
if [ ! -x $SPELL ]
then
	echo "Error - $SPELL binary file does NOT exists; cannot check the spellings of $file."
	exit 3
fi
$SPELL $file