#!/bin/sh

DISK=/dev/sda2
BAT=BAT0

get_battery()
{
	[ "$(ls -A /sys/class/power_supply/)" ] &&
		echo -e "   $(cat /sys/class/power_supply/$BAT/capacity || "Failed to get batery")"
}

get_disk_usage()
{
	disk=$(df -h $DISK | grep /dev/ | awk '{print $5}')
	echo -e "  $disk"
}

get_ram()
{
	mem=$(free | grep Mem | awk '{printf("%.2f%"), $3/$2 * 100.0}')
	echo -e "  $mem"
}

get_cpu()
{
	cpu=$(grep 'cpu ' /proc/stat | awk '{usage=($2+$4)*100/($2+$4+$5)} END {printf("%.2f%"), usage}')
	echo -e "  $cpu"
}

get_date()
{
	echo -e "  $(date +'%d-%m-%y')"
}

get_time()
{
	echo -e " $(date +'%H:%M')"
}

while true; do
	xsetroot -name "$(get_battery) $(get_disk_usage) $(get_cpu) $(get_ram) $(get_date) $(get_time)"
	sleep 10
done
