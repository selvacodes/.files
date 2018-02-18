#!/bin/bash
# Set some configuration options
SESSION=${PWD##*/} 

# Create a new, detached session
tmux new-session -d -s $SESSION

tmux new-window -t $SESSION:1 -n 'editor'
tmux select-window -t $SESSION:1
tmux send-keys 'vim' 'C-m'
tmux rename-window 'editor'

tmux new-window -t $SESSION:2 -n 'server'
tmux new-window -t $SESSION:3 -n 'build'
tmux new-window -t $SESSION:4 -n 'misc'

tmux select-window -t $SESSION:4
tmux send-keys 'git status' C-m

tmux select-window -t $SESSION:3
tmux send-keys 'yarn run' C-m

tmux select-window -t $SESSION:2
tmux send-keys 'yarn run' C-m

tmux select-window -t $SESSION:1

# Attach to the session
tmux attach-session -t $SESSION

