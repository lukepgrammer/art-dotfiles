#!/bin/bash

# Handle clicks
case $BLOCK_BUTTON in
    1) notify-send "📅 Calendar" "$(date '+%A, %d %B %Y')" ;;  # Left click
    3) gnome-calendar & ;;  # Right click: open calendar app
esac


# Calendar/hour

printf "📅 %s\n" "$(date '+%b %d (%a) | %I:%M %p')"

