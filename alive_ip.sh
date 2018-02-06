#!/bin/bash

# 列出所有活动的IP

for ip in 10.0.0.{1..255}
do
    ping $ip -c 2 &> /dev/null
    if [ $? -eq 0 ]
    then
        echo $ip is alive
    fi
done
