#!/bin/bash
file=$1
pwd=$2
ccrypt $pwd < $file > $file.cpy
echo "$file.cpy is the encrypted file"
