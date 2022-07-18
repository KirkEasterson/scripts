#!/bin/bash

# TODO: don't assume tmux is installed

session="scratchpad"
session_directory="~/"

# if the session doesn't already exist
tmux has-session -t $session 2> /dev/null
if [ $? != 0 ]; then

	# create the session
	tmux new-session -d -s $session -c $session_directory

	# manage the 'main' window
	window=1
	tmux rename-window -t $session:$window 'main'
fi

# if currently in tmux, else not in tmux
if [ ! -z "${TMUX}" ]; then
	tmux switch-client -t $session
else
	tmux attach-session -t $session
fi
