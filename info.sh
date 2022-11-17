#!/bin/bash
echo "Username: $(whoami)" > info.txt
echo "Kernel version: $(uname -r)" >> info.txt
echo "Processor core: $(nproc --all)" >> info.txt
echo "Current Directory: $(pwd)" >> info.txt
echo "Current Date: $(date)" >> info.txt
echo "Local IP address: $(hostname -I)" >> info.txt
echo "$(less /proc/meminfo | head -n +2)" >> info.txt
echo "Uptime elapsed: $(uptime)" >> info.txt
echo "Secondary Storage:" >> info.txt
echo "$(df -h)" >> info.txt
echo "$(cat sched_latency_ns)" >> info.txt