#!/bin/bash

# Check if "gurk" is running
if ! pgrep -x "gurk" > /dev/null; then
    # If not running, start "gurk"
    gurk    # Replace with the actual command to start "gurk"
fi
