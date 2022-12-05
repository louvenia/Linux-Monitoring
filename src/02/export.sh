#!/bin/bash
date=`date +"%:::z"`
date2=`date +"%d %B %Y %T"`
export TIMEZONE="$(cat /etc/timezone) UTC $date"
export OS="$(cat /etc/issue | awk '{print $1,$2,$3}' | head -1)"
export DATE="$date2"
export UPTIME="$(uptime -p | awk '{print $2, $3, $4, $5}')"
export UPTIME_SEC="$(cat /proc/uptime | awk '{print $1}')"
export IP="$(hostname -I | head -1)"
export MASK="$(ifconfig | awk 'NR==11{print $4}')"
export GATEWAY="$(ip r | awk '{print $3}' | head -1)"
export RAM_TOTAL="$(free | awk '/Mem:/{printf "%.3f Gb", $2/1048576}')"
export RAM_USED="$(free | awk '/Mem:/{printf "%.3f Gb", $3/1048576}')"
export RAM_FREE="$(free | awk '/Mem:/{printf "%.3f Gb", $4/1048576}')"
export SPACE_ROOT="$(df /root | awk '/\/$/ {printf "%.2f MB", $2/1024}')"
export SPACE_ROOT_USED="$(df /root | awk '/\/$/ {printf "%.2f MB", $3/1024}')"
export SPACE_ROOT_FREE="$(df /root | awk '/\/$/ {printf "%.2f MB", $4/1024}')"

./output.sh
./save.sh