#!/bin/sh


ram() {
	mem=$(free -h | awk '/Mem:/ { print $3 }' | cut -f1 -d 'i')
	echo  RAM "$mem"
}

cpu() {
	read -r cpu a b c previdle rest < /proc/stat
	prevtotal=$((a+b+c+previdle))
	sleep 0.5
	read -r cpu a b c idle rest < /proc/stat
	total=$((a+b+c+idle))
	cpu=$((100*( (total-prevtotal) - (idle-previdle) ) / (total-prevtotal) ))
	echo  CPU "$cpu"%
}


day() {
        dte=$(date +"%D")

        echo "$dte"
}


clock() {
	time=$(date +"%H:%M")

	echo "$time"
}


main() {
	while true; do
		xsetroot -name "  [ $(ram) ]  [ $(cpu) ]  [ $(day) ]  [ $(clock) ]  "
		sleep 10s
	done
}

main
