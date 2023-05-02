#!/bin/sh

ram() {
	mem=$(free -h | awk '/Mem:/ { print $3 }' | cut -f1 -d 'i'| sed s/M//g)
	echo -e "^c#5f50bf^$mem^d^ M  " 
}
i
cpu() {
	cpu=$(uptime | grep average | awk '{print $9" "$10" "$11}' | sed s/","//g)
	echo -e "^c#454545^|  ^c#5f50bf^$cpu  " 
}


day() {
        dte=$(date "+%a %d/%m %H:%M")

        echo -e  "^c#454545^|  ^d^$dte   "
}


cputemp()
{
	CPU_TEMP=$(sensors | grep Package | awk 'NR==1{gsub("+", " "); gsub("\\..", " "); print $4}')

	echo -e  "^c#454545^|  ^c#5f50bf^$CPU_TEMP ^d^°C  "
}


battery()
{
	# The vast majority of people only use one battery.

	if [ -d /sys/class/power_supply/BAT0 ]; then
		capacity=$(cat /sys/class/power_supply/BAT0/capacity)
		fi
	echo -e "^c#454545^|  ^c#5f50bf^$capacity ^d^%  "
}

main() {
	while true; do
		xsetroot -name "$(ram)$(cpu)$(cputemp)$(battery)$(day)"
		sleep 5s
	done
}

main
