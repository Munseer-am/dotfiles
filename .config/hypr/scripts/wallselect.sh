#!/bin/bash

# Set the directory you want to list files from
DIRECTORY="/usr/share/wallpapers/"

# List files in the directory and pass them to rofi
SELECTED_FILE=$(ls "$DIRECTORY" | rofi -dmenu -p "Select a file:")

# Check if a file was selected
if [ -n "$SELECTED_FILE" ]; then
    FULL_PATH="$DIRECTORY$SELECTED_FILE"
    echo "You selected: $FULL_PATH"
    swww img "$FULL_PATH" --transition-duration=2 --transition-type=center
    # You can add more actions here, like opening the file or processing it
else
    echo "No file selected."
fi

