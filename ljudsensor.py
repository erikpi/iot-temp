#!/usr/bin/env python
#Soundsensor & Warning Laser by Erik 

import RPi.GPIO as GPIO

Soundpin = 15
LedPin = 11

#def setup():
GPIO.setmode(GPIO.BOARD) # use board pin numbers
GPIO.setup(LedPin, GPIO.OUT)   # Set LedPin's mode is output
GPIO.output(LedPin, GPIO.HIGH) # Set LedPin high(+3.3V) to off led
GPIO.setup(Soundpin, GPIO.IN) 

while 1:
	if GPIO.input(Soundpin) == GPIO.LOW:
		print "Sound detected! LED ON!"
		GPIO.output(LedPin, GPIO.HIGH)  # led on
	else : 
		print "It's quiet, LED OFF!"
		GPIO.output(LedPin, GPIO.LOW) # led off

