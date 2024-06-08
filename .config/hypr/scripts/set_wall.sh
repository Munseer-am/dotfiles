#!/usr/bin/bash

WALL_DIR="/usr/share/wallpapers/"
WALLPAPER=$(ls "$WALL_DIR" | shuf -n 1)
WALLPAPER_PATH="$WALL_DIR$WALLPAPER"

MIN=10
MAX=180

ANGLE=$(( RANDOM % (MAX - MIN + 1) + MIN ))

eval swww img "$WALLPAPER_PATH" --transition-fps=60 --transition-duration=3 --transition-type=random --transition-angle="$ANGLE"

