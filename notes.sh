#!/bin/bash

date=$(date +%Y-%m-%d)
directory="$HOME/Documents/notes/src"
fileName="$directory/note-$date.md"

# check if directories exist
if [ ! -d $directory ]; then
	mkdir -p $directory
fi

# check if file exists
if [ ! -f $fileName ]; then
	echo "# Notes for $date" > $fileName
fi

# output formatting for notes
nvim -c "norm Go" \
	-c "norm Go## $(date +%H:%M)" \
	-c "norm G2o" \
	-c "norm zz" \
	-c "startinsert" $fileName

