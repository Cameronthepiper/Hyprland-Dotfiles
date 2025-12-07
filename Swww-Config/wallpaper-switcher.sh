#!/usr/bin/env sh

WALLPAPER_DIR="$HOME/Pictures/Wallpapers/Favourites/"

# Pick a random wallpaper
WP=$(find "$WALLPAPER_DIR" -type f \( -name "*.png" -o -name "*.jpg" -o -name "*.jpeg" \) | shuf -n 1)

# Transition options (customize!)
TRANSITION="grow"
DURATION=1.5

swww img "$WP" --transition-type "$TRANSITION" --transition-duration "$DURATION"
