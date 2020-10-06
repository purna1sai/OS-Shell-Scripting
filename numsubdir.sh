#!/bin/bash
START=$HOME
[ $# -eq 1 ] && START=$1 || :
if [ ! -d $START ] 
then
	echo "$START not a directory!"
	exit 1
fi
DIRS=$(find "$START" -type d)
for d in $DIRS
do
   [ "$d" != "." -a "$d" != ".." ] &&  echo "$d dirctory has $(ls -l $d | wc -l) files" || :
done