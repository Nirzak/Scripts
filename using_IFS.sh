#!/bin/sh
# Author: Nirjas Jakilim
data="nirjas:nirjas two:/home/nirjas:this is nirjas:/bin/bash"
oldIFS=$IFS
IFS=":"
for item in $data
do
echo "$item\n"
done


