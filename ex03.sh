#!/bin/bash

# 检查指定文件是否存在

FILE=/etc/network/interfaces

if [ -e $FILE ]
then
    echo "The $FILE is exists ."
else
    echo "The $FILE does not exists ."
fi
