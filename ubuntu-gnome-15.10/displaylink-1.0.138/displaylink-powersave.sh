#!/bin/sh

#location: /usr/local/bin/displaylink-powersave.sh

logger "triggered script displaylink-powersave with status $1"

case $1 in
	false)
		service displaylink start
		;;
	true)
		# Displaylink service is sometimes consuming a lot of power (2-3 watt)
		# in battery mode. In battery mode this service is not needed, because the
		# notebook is disconnected. This hook shuts down the service in
		# battery mode.

		service displaylink stop
		;;
esac

