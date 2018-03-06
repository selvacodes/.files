#!/bin/bash
set -euo pipefail

# ==================================================================
# APPS
# ==================================================================

foregroundAppsString=$(osascript -e 'tell application "System Events" to get name of (processes where background only is false)')

IFS=',' read -r -a foregroundApps <<< "$foregroundAppsString"

for foregroundApp in "${foregroundApps[@]}"
do
  appName=$(echo "$foregroundApp" | sed 's/^ *//g')
  echo $appName
  if [[ ! "$appName" == "Finder" && ! "$appName" == "iTerm2" ]]; then
    osascript -e 'quit app "'"$appName"'"'
  fi
done

# ==================================================================
# PROCESSES
# ==================================================================

killall node || true
tmux kill-server || true
pkill postgres || true

# ==================================================================
# ARTIFACTS
# ==================================================================

# Remove unused homebrew artifacts
brew cleanup
brew cask cleanup
brew prune

# Remove .DS_Store files
find "$HOME" -name '.DS_Store' -delete

