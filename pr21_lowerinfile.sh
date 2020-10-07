#!/bin/bash
file=$1
cat $file | tr '[A-Z]' '[a-z]'
exit
