#!/bin/bash
services="sshd jenkins"
for i in $services
do
	ps -C $i
	if [ $? -ne 0 ]
	then
		echo "services $i was stopped" | mail -s "services moniter" likithliki835@gmail.com
	fi
done

