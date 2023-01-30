#!/bin/bash

export HOSTNAME="$(cat /proc/sys/kernel/hostname)"
export TIMEZONE="$(cat /etc/timezone) UTC $(date +"%z")"
export USER="$(whoami)"
export OS="$(cat /etc/issue | awk '{print $1,$2,$3}')"
export DATE="$(date | awk '{print $2,$3,$4,$5}')"
export UPTIME="$(uptime -p | awk '{print $2,$3,$4,$5}')"
export UPTIME_SEC="$(cat /proc/uptime | awk '{print int($1) " seconds"}')"
export IP="$(hostname -I)"
export MASK="$(ifconfig | awk 'FNR==2{print $4}')"
export GATEWAY="$(ip r | awk 'NR==1{print $3}')"
export RAM_TOTAL="$(free -m | awk '/Mem/{printf "%.3f GB", $2/1024}')"
export RAM_USED="$(free -m | awk '/Mem/{printf "%.3f GB", $3/1024}')"
export RAM_FREE="$(free -m | awk '/Mem/{printf "%.3f GB", $4/1024}')"
export SPACE_ROOT="$(df /root | awk 'FNR==2 {printf "%.2f MB", $2/1024}')"
export SPACE_ROOT_USED="$(df /root | awk 'FNR==2 {printf "%.2f MB", $3/1024}')"
export SPACE_ROOT_FREE="$(df /root | awk 'FNR==2 {printf "%.2f MB", $4/1024}')"

chmod +x ./outputData.sh
./outputData.sh

