#!/bin/bash

# Not created by default on fresh install
if [[ -d "$HOME/Library" ]]; then
  mkdir -p "$HOME/Library/Workflows/Applications/Folder Actions"
fi

if [[ -d "$HOME/Library/Workflows/Applications/Folder Actions" ]]
  then
    for source in "$DOTFILES_DIR/lib/Folder Actions/"*; do
      target="$HOME/Library/Workflows/Applications/Folder Actions/$(basename "$source")"
      ln -sFnv "$source" "$target"
    done
fi
