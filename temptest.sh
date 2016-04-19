#!/bin/bash

LOGFILE=temperatur.log
rm $LOGFILE

while true
do
	TEMP=$(sudo ./Adafruit_DHT 11 4 | grep Temp)
	if [ ! -z "$TEMP" ]; then 
		echo -n "$(date) "  >> $LOGFILE
		echo $TEMP >> $LOGFILE
		(echo -n "$(date) "; echo $TEMP) > /var/www/temperatur.log
	
	sleep 2
	fi
done

