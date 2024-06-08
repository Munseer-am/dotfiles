#!/usr/bin/bash

WALL_DIR="/usr/share/wallpapers/"
WALLPAPER=$(ls "$WALL_DIR" | shuf -n 1)
WALLPAPER_PATH="$WALL_DIR$WALLPAPER"

eval swww img "$WALLPAPER_PATH" --transition-fps=60 --transition-duration=3 --transition-type=random --transition-angle=45

