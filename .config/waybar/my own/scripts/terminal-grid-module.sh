#!/bin/bash

# Output JSON for Waybar
echo '{"text": "󰣇", "tooltip": "Open terminal grid", "class": "terminal-grid"}'

# If script is executed with --clicked argument, launch the terminal grid
if [ "$1" == "--clicked" ]; then
  exec ~/.config/waybar/scripts/open-terminal-grid.sh
fi

exit 0
