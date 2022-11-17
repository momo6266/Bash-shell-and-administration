#!/bin/bash

status1="successful"

sudo nginx -t 2>errors.txt
status2=`awk 'END {print $NF}' errors.txt`

if [ $status1 = $status2 ]; then
	echo "nginx config file OK"
	sudo systemctl restart nginx
	sudo systemctl reload nginx
	sudo systemctl status nginx | head -3| tail -1
else
	echo "nginx config file error"
fi

