#!/bin/bash
file=$1
counter=0
output="oddfile.txt"
while read line
do
isEvenNo=$( expr $counter % 2 )
if [ $isEvenNo -eq 0 ] 
then
echo $line >> $output
fi
(( counter ++ ))
done < $file
/bin/rm -f $file
/bin/mv $output $file
