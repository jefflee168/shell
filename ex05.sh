#!/bin/bash

# 启动带符号的字符,单引号需加转义符或者加双引号

for i in I don\'s know if "this'll" work
do
    echo "word: $i"
done
