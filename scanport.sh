#!/bin/bash

###########################################
# Author: Nirjas Jakilim
# Version: v1
# Description: Will show up the open ports in a range.
# Usage: ./scanport.sh <host> <port range>
# Example: ./scanport.sh host.nirjas.com 80-8080
###########################################

host=$1
portrange=$2
port1=$(echo $portrange | cut -f1 -d-)
port2=$(echo $portrange | cut -f2 -d-)
echo "The open ports are the following"
while [ $port1 -le $port2 ]
do
nc -vz $host $port1 &> /dev/null
nc_exit_code=$?
if [ $nc_exit_code -eq 0 ]
then
echo $port1
fi
port1=`expr $port1 + 1`
done
