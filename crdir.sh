#!/bin/bash

###############################
# Author: Nirjas Jakilim
# Motive: Create a directory to a remote server which has jump proxy.
# Usage: ./crdir.sh <proxy remote server> <target remote server> <directory name or path>
# Example Usage: ./crdir.sh nirjas@proxyserver nirjas@targetserver testdir
################################

# Check for the current number of arguments.
if [[ $# -ne 3 ]]; then
echo "Wrong Usage."
echo "Usage: $0 <proxy remote server> <target remote server> <directory name or path>"
echo "for example: $0 nirjas@proxyserver nirjas@targetserver testdir"
exit 1
fi

jmpserver=$1
trserver=$2
name=$3
ssh -q -t ${jmpserver} <<END1
	ssh -q -t ${trserver} <<END2
	[[ -d ${name} ]] && echo "Error directory already
exsists" || mkdir ${name}
END2
END1
