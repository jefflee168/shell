#!/bin/bash

# 遍历变量

# 变量赋值时不能有空格，如"test = "，这样会报错
test="I don't know this'll work"

for i in $test
do
    echo "Word: $i"
done
