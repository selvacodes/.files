#!/bin/bash
set -euxo pipefail 

apps=(
  "iTerm"
  "Firefox"
)

for app in "${apps[@]}"; do
  open -a "$app"
done

websites=(
  "https://twitter.com/"
)

open -a "Firefox" 
for website in "${websites[@]}"; do
  open "$website"
done
