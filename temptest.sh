#!/bin/bash

LOGFILE=temperatur.log


while true
do

	TEMP=$(sudo ./Adafruit_DHT 11 4 | grep Temp)
	if [ ! -z "$TEMP" ]; then 
		(echo -n "$(date '+%D %R') "; echo $TEMP) | awk '{ print $1, $2, $3, $5, $7, $9 }' >> $LOGFILE

		 cp -f $LOGFILE /var/www/temperatur.log
	
	
	fi
	sleep 2
done

