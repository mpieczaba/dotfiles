#!/bin/bash

if ! pgrep -x polybar; then
	polybar szrot &
else
	pkill -USR1 polybar
fi

echo "Polybar launched..."
