#!/bin/sh

ram() {
	mem="\x03"$(free -h | awk '/Mem:/ { print $3 }' | cut -f1 -d 'i'| sed s/M//g)"\x04|\x01"
	echo -e $mem M
}

cpu() {
	cpu="\x03"$(uptime | grep average | awk '{print $8"  "$9"  "$10}' | sed s/","//g)"\x04|\x01"
	echo -e $cpu
}


day() {
        dte=$(date "+%A %d/%m %H:%M")"\x04|\x01"

        echo -e $dte 
}


cputemp()
{
	CPU_TEMP="\x03"$(sensors | grep Package | awk 'NR==1{gsub("+", " "); gsub("\\..", " "); print $4"\x01"$5}')"\x04|\x01"

	echo -e $CPU_TEMP
}


battery()
{
	# The vast majority of people only use one battery.

	if [ -d /sys/class/power_supply/BAT0 ]; then
		capacity="\x03"$(cat /sys/class/power_supply/BAT0/capacity)"\x04|\x01"
		fi
	echo -e $capacity %
}



sep()
{
         sp="\x04|\x01"
	echo -e $sp
	 
}


main() {
	while true; do
		xsetroot -name "$(ram)  $(cpu)  $(cputemp)  $(battery)  $(day)"
		sleep 5s
	done
}

main
