#!/bin/bash
set -euxo pipefail 

foregroundAppsString=$(osascript -e 'tell application "System Events" to get name of (processes where background only is false)')

IFS=',' read -r -a foregroundApps <<< "$foregroundAppsString"

for foregroundApp in "${foregroundApps[@]}"
do
  appName=$(echo "$foregroundApp" | sed 's/^ *//g')
  echo $appName
  if [[ ! "$appName" == "Finder" && ! "$appName" == "iTerm2" && ! "$appName" == "Firefox" ]]; then
    osascript -e 'quit app "'"$appName"'"'
  fi
done
#apps=(
  #"iTerm"
  #"Firefox"
#)

#for app in "${apps[@]}"; do
  #open -a "$app"
#done

#websites=(
#)

#open -a "Firefox" 
#for website in "${websites[@]}"; do
  #open "$website"
#done

cd ~
DEFAULT_DIRECTORY="projects"
tmux new-session -d -s "projects"

tmux new-window -c "$DEFAULT_DIRECTORY"
tmux rename-window "background"

tmux new-window -c "$DEFAULT_DIRECTORY"
tmux rename-window "shell"

tmux new-window -c "$DEFAULT_DIRECTORY"
tmux rename-window "main"
tmux send-keys -t 0 C-z "vim -c 'E'" Enter

# Attach to the session
tmux attach-session -t "projects"
