#!/bin/bash
file=$1
out="output.txt"
sed -e 's/[\t ]//g;/^$/d' $file > $out
echo "Output written to $out"
