#!/bin/bash
# Use this script to integrate the tatlin gcode viewer into your toolpath
# so that it opens automatically after every plate is sliced. 
#
# Save this script with the executable bit set, and then simply add the
# full path to the script to slic3r's configuration under Print Settings -> 
# Output Options -> Post-processing scripts
#
# tatlin is available from https://github.com/dkobozev/tatlin.git
#
# I keep my git repositories in $HOME/git. Change the path as necessary.
#
python $HOME/git/tatlin/tatlin.py "$@" &
