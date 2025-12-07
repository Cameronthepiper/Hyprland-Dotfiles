#!/usr/bin/env sh

# List sinks and pick one via rofi
SINK=$(pactl list short sinks | awk '{print $2 " " $1}' | rofi -dmenu -p "Select output")

[ -z "$SINK" ] && exit 0

# Extract sink name
SINK_NAME=$(echo $SINK | awk '{print $1}')

# Set default sink
pactl set-default-sink "$SINK_NAME"

# Move all current streams to the new sink
pactl list short sink-inputs | awk '{print $1}' | xargs -I{} pactl move-sink-input {} "$SINK_NAME"
