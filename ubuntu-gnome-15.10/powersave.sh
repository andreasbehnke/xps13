#!/bin/sh
#location: /usr/local/bin/powersave

logger "triggered script powersave with status $1"

case $1 in
	false)
		sleep 5
		echo '600' > /sys/class/backlight/intel_backlight/brightness 
		;;
	true)
		sleep 5
		# the following settings are recommended by powertop
		echo '1500' > '/proc/sys/vm/dirty_writeback_centisecs';
		echo 'auto' > '/sys/bus/usb/devices/1-4/power/control';
		# dimmed backlight
		echo '47' > /sys/class/backlight/intel_backlight/brightness
		;;
esac
