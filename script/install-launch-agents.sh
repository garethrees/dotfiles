#!/bin/bash

if [[ -d "$HOME/Library/LaunchAgents" ]]
  then
    for source in "$HOME/.script/LaunchAgents/"*; do
      target="$HOME/Library/LaunchAgents/$(basename "$source")"
      launchctl unload "$target"
      ln -sFv "$source" "$target"
      launchctl load "$target"
    done
fi

