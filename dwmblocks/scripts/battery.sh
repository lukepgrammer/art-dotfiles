#!/bin/bash

# Handle clicks
case $BLOCK_BUTTON in
    1) notify-send "Battery Status" "$(acpi)" ;;  # Left click: show popup
esac

# Get battery info
info=$(acpi -b)
percent=$(echo "$info" | grep -o '[0-9]\+%' | tr -d '%')
charging=$(echo "$info" | grep -o 'Charging')

# Icon logic
if [ "$charging" ]; then
    icon=""  # Charging
elif [ "$percent" -ge 80 ]; then
    icon=""
elif [ "$percent" -ge 60 ]; then
    icon=""
elif [ "$percent" -ge 40 ]; then
    icon=""
elif [ "$percent" -ge 20 ]; then
    icon=""
else
    icon=""
fi

# Output
printf "%s %s%%\n" "$icon" "$percent"

