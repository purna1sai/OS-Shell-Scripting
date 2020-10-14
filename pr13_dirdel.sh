#!/bin/bash
d1=$1
d2=$2
for f in $d2/*
do
if [ -f $f ]
then
tF="$d1/$(basename $f)"
if [ -f $tF ]
then
echo -n "Deleting $tF..."
/bin/rm $tF
[ $? -eq 0 ] && echo "done" || echo "failed"
fi
fi
done
