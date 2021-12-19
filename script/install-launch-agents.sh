#!/bin/bash

echo "==> Installing LaunchAgents..."

if [[ -d "$HOME/Library/LaunchAgents" ]]; then
  for source in "$DOTFILES_DIR/lib/LaunchAgents/"*; do
    target="$HOME/Library/LaunchAgents/$(basename "$source")"

    # Only try to unload if already installed
    if [[ -L "$target" ]]; then
      launchctl unload "$target"
    fi

    ln -sFv "$source" "$target"
    launchctl load "$target"
  done
fi
