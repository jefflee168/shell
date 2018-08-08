#!/bin/bash

# 当$i等于5时结束循环

for i in {1..10}
do
    if [ $i -eq 5 ]
    then
        break
    fi
    echo "The next number is $i"
done
echo "The for loop is completed"
