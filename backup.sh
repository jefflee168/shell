#!/bin/bash

cd /home/jeff/shell
git add .
git commit -am "backup taken at @ $(date +%Y%m%d~%H:%M:%S)"
git push -u origin master
