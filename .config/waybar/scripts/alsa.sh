#!/bin/bash

VOLUME=$(amixer get Master | grep 'Mono:' | awk '{print $4}' | tr -d '[]')

echo "Volume: $VOLUME"

# Handle volume control
if [ "$1" = "up" ]; then
    amixer set Master 5%+
elif [ "$1" = "down" ]; then
    amixer set Master 5%-
elif [ "$1" = "toggle" ]; then
    amixer set Master toggle
fi

