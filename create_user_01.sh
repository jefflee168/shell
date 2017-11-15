#/bin/bash

CMD=`cat /etc/passwd|grep 'test' -c`
echo "Please enter your name: "
read USER
if [ $CMD -eq 0 ];then
    useradd $USER
    chmod +w /etc/sudoers
    echo "$USER ALL=(ALL) NOPASSWD: ALL" >>/etc/sudoers
    chmod -w /etc/sudoers
    echo "Congratulations,$USER added."
else
    echo "$USER exists."
fi
