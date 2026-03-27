#!/bin/bash
THRESHOLD=75
USAGE=$(df -h | grep "C:" | awk '{ print $5 }' | sed 's/%//g')

if [ "$USAGE" -gt "$THRESHOLD" ]; then
	echo "limit reached"
fi	
