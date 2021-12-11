#!/bin/bash

if [[ -d "$HOME/Library/Services" ]]
  then
    for source in "$DOTFILES_DIR/lib/Services/"*; do
      target="$HOME/Library/Services/$(basename "$source")"
      ln -sFhv "$source" "$target"
    done
fi

