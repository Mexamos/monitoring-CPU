#!/bin/bash
CPU_USAGE=$(cat /proc/loadavg | awk '{print $1}')
FILE_PATH="/home/user/code/bash/monitoring_cpu/log.txt"
DATE=$(date '+%d.%m.%Y %H:%M:%S')

echo "Date: $DATE CPU: $CPU_USAGE%" >> $FILE_PATH

COUNT_LOG_LINES=$(wc -l $FILE_PATH | awk '{ print $1 }')
if [ $COUNT_LOG_LINES -gt 200 ]
then
  sed -i '1,100d' $FILE_PATH
fi