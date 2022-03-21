#!/bin/bash
url=$1
status=$(curl -kv https://${url} 2>&1 | grep -i 'HTTP/1.1 ' | awk '{print $3}'| sed -e 's/^[ \t]*//')
echo "${status}"
