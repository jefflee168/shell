#!/bin/bash

# 此脚本检查用户jeff是否存在，如果存在，则显示其家目录下的文件

USER=`cat /etc/passwd|grep jeff |sed 's/:/ /g' |awk '{print $1}'`
echo $USER &>/dev/null

if [ $? -eq 0 ]
then
    echo "The user $USER exists on the system"
    ls  /home/$USER
else
    echo "The user $USER does not exist on the system"
fi
