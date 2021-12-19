#!/bin/bash

echo "==> Installing Services..."
if [[ -d "$HOME/Library/Services" ]]; then
  for source in "$DOTFILES_DIR/lib/Services/"*; do
    target="$HOME/Library/Services/$(basename "$source")"
    ln -sFnv "$source" "$target"
  done
fi
