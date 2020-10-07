#!/bin/bash
counter=1
file=$1
if  [ ! -f $file ]
then
echo "$file not a file!"
exit 1
fi
exec 3<&0
while read line
do
if [ $counter -eq 15 ]
then
counter=0
echo " *** Press any key to continue ..."
read -u 3 enterKey
fi
echo $line
(( counter++ ))
done < $file
