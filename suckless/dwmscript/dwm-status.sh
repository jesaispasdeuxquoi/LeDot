#!/bin/sh

ram() {
	mem=$(free -h | awk '/Mem:/ { print $3 }' | cut -f1 -d 'i'| sed s/M//g)
	echo -e "\x03"$mem"\x01 M "
}
i
cpu() {
	cpu=$(uptime | grep average | awk '{print $8" "$9" "$10}' | sed s/","//g)
	echo -e "\x04|\x03 $cpu "
}


day() {
        dte=$(date "+%a %d/%m %H:%M")

        echo -e "\x04|\x01 "$dte
}


cputemp()
{
	CPU_TEMP=$(sensors | grep Package | awk 'NR==1{gsub("+", " "); gsub("\\..", " "); print $4}')

	echo -e  "\x04|\x03 ""$CPU_TEMP\x01°C "
}


battery()
{
	# The vast majority of people only use one battery.

	if [ -d /sys/class/power_supply/BAT0 ]; then
		capacity=$(cat /sys/class/power_supply/BAT0/capacity)
		fi
	echo -e "\x04|\x03 "$capacity"\x01 % "
}

main() {
	while true; do
		xsetroot -name "$(ram)$(cpu)$(cputemp)$(battery)$(day)"
		sleep 5s
	done
}

main
