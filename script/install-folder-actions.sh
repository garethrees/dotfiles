#!/bin/bash

if [[ -d "$HOME/Library/Workflows/Applications/Folder Actions" ]]
  then
    for source in "$DOTFILES_DIR/lib/Folder Actions/"*; do
      target="$HOME/Library/Workflows/Applications/Folder Actions/$(basename "$source")"
      ln -sFhv "$source" "$target"
    done
fi
