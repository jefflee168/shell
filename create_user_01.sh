#!/bin/bash

# 此脚本为创建用户脚本，当用户输入用户名时，脚本会先判断是否存在
# 如果不存在，则会创建，并且会新增加的用户添加到文件/etc/sudoers中

echo "Please enter new user name:"
read USER
CMD=`grep $USER /etc/passwd | sed 's/:/ /g' | awk '{print $1}'`
if [ $CMD == $USER ];then
    echo "Oops!$USER exists.Please enter another."
else
    adduser $USER
    chmod +w /etc/sudoers
    sed -i "/root[[:space:]]ALL=(ALL:ALL) ALL/a\\$USER\tALL=(ALL:ALL) NOPASSWD: ALL" /etc/sudoers
    chmod -w /etc/sudoers
    echo "INFO: Congratulations,$USER added."
fi
