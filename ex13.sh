#!/bin/bash

# 当$var1等于5时跳出循环-while版

var1=1
while [ $var1 -lt 10 ]
do
    if [ $var1 -eq 5 ]
    then
        break
    fi
    echo "The next number is $var1"
    var1=$[ $var1 + 1 ]
done
echo "The while loop is completed"
