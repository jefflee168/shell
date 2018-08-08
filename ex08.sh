#!/bin/bash

# 判断一个目录下的文件与目录，然后分别打印出来

FILE="/etc/network/*"

for file in $FILE
do
    if [ -d $file ]
    then
        echo "$file is a directory"
    elif [ -f $file ]
    then
        echo "$file is a file"
    fi
done
