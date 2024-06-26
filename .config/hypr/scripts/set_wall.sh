#!/usr/bin/bash

WALL_DIR="/usr/share/wallpapers/"

if [ -n "$1" ]; then
    WALLPAPER_PATH="$1"
else
    WALLPAPER=$(ls "$WALL_DIR" | shuf -n 1)
    WALLPAPER_PATH="$WALL_DIR$WALLPAPER"
fi

MIN=10
MAX=180

ANGLE=$(( RANDOM % (MAX - MIN + 1) + MIN ))

eval swww img "$WALLPAPER_PATH" --transition-fps=60 --transition-duration=2 --transition-type=random --transition-angle="$ANGLE"
