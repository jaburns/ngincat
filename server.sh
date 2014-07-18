#!/bin/bash
echo|read|{(read t;g=$(echo $t|cut -d' ' -f2)
while read|grep :;do :;done;[[ -e .$g &&! $g = *..* ]]||exit
printf "HTTP/1.1 200 OK\nContent-Length: $(stat -c%s .$g)\n\n"
cat .$g)|nc -l -p $1;}>/dev/fd/0;$0 $1
