#!/bin/bash

if [[ -d "$HOME/Library/LaunchAgents" ]]
  then
    for source in "$DOTFILES_DIR/lib/LaunchAgents/"*; do
      target="$HOME/Library/LaunchAgents/$(basename "$source")"
      launchctl unload "$target"
      ln -sFv "$source" "$target"
      launchctl load "$target"
    done
fi

