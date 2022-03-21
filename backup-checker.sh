#!/bin/bash

#####################################
# Author: Nirjas Jakilim
# Version: v1
# Description: Check if daily backup has succeeded.
# Usage: ./backup-checker.sh
#####################################

# Format the date: yyyymmdd.
DATE_FORMAT=$(date +%Y%m%d)

# Use basename to remove directory, expansion to remove extension.
file=$(basename ${1%%.*}) # Double %% so .tar.gz works too.

if [[ ${file} == "backup-${DATE_FORMAT}" ]]; then
echo "Backup with todays date found, all good."
exit 0 # Successful.
else
echo "No backup with todays date found, please double check!"
exit 1 # Unsuccessful.
fi
