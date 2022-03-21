#!/bin/bash

cont(){
local context=$1
echo "${context}"
}

echo "$(cont)"

val1(){
local var=12
echo "${var}"
}

val2(){
local var2=14
echo "${var2}"
}

echo "variable1: $(val1)"
echo "variable2: $(val2)"

[[ $(val1) != $(val2) ]] && echo "String not matched"
