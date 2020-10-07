#!/bin/bash
d1=$1
d2=$2
for f in $d2/*
do
if [ -f $f ]
then
tFile="$d1/$(basename $f)"
if [ -f $tFile ]
then
echo -n "Deleting $tFile..."
/bin/rm $tFile
[ $? -eq 0 ] && echo "done" || echo "failed"
fi
fi
done
