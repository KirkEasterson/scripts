#!/bin/bash

# Replace ID with the id of the device from the command 'xinput'
xinput --set-int-prop ID "libinput Natural Scrolling Enabled" 8 1

# Set tap to click for touchpad, replace ID with id fro ''xinput'
xinput set-prop ID "libinput Tapping Enabled" 1

