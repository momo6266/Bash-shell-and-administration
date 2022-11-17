#!/bin/bash
echo "$(ps -aux | more | awk '{ print ( $1 "\t" $11 "\t" $4 ) }')" > processes.log