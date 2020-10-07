#!/bin/bash
filename=$1
echo "$filename was last modified on "`ls -l $filename | cut -d" " -f 6,7,8,9`
