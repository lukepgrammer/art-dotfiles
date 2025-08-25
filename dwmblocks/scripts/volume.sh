#!/bin/bash

# Handle clicks
case $BLOCK_BUTTON in
    1) pamixer -t ;;         # Left click: toggle mute
    4) pamixer -i 5 ;;       # Scroll up: increase volume
    5) pamixer -d 5 ;;       # Scroll down: decrease volume
esac

# Get volume and mute status
vol=$(pamixer --get-volume)
mute=$(pamixer --get-mute)

# Icon: 墳 (volume) or 婢 (muted)
if [ "$mute" = "true" ]; then
    icon="婢"
else
    icon="墳"
fi

# Output
printf "%s %s%%\n" "$icon" "$vol"

