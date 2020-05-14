#!/bin/bash
CPU_USAGE=$(cat /proc/loadavg | awk '{print $1}')
FILE_PATH="/home/user/code/bash/monitoring_cpu/log.txt"
DATE=$(date '+%d.%m.%Y %H:%M:%S')

echo "Date: $DATE. CPU: $CPU_USAGE%" >> $FILE_PATH