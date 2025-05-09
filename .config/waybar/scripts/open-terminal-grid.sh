#!/bin/bash

# Get the next available workspace
NEXT_WS=$(hyprctl workspaces | grep -B 1 "workspace ID" | grep "workspace ID" | sort -n -k 3 | tail -1 | awk '{print $3+1}')

# Create a new workspace
hyprctl dispatch workspace $NEXT_WS

# Wait a moment for workspace to initialize
sleep 0.2

# Launch the first terminal in center of workspace
kitty -e &
PID=$!
sleep 0.5

# Split the workspace horizontally and vertically
hyprctl dispatch splitv
kitty -e -e cmatrix -C red &
sleep 0.5

hyprctl dispatch splith
kitty -e cava &
sleep 0.5

# Go back to first window and split horizontally
hyprctl dispatch focuswindow pid:$PID
hyprctl dispatch splith
kitty -e cbonsai &

exit 0
