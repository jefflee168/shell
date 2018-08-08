#!/bin/bash

# 多变量处理

for (( a = 1, b = 10; a <= 10; a++, b-- ))
do
    echo "$a - $b"
done
