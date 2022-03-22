#!/bin/sh

###################################
# Author: Nirjas Jakilim
# Motive: List all the log files from the system
# Usage: ./loglister.sh
###################################

echo "All log files are the following"
for f in $(sudo ls -R /var/log/ | grep "\.log")
do
echo "$f"
done
