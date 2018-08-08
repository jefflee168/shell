#!/bin/bash

# 检测指定目录是否存在

TARGET_DIR=/etc/network

if [ -d $TARGET_DIR ]
then
    echo "$TARGET_DIR 目录存在！"
else
    echo "$TARGET_DIR 目录不存在！"
fi
