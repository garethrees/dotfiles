#!/bin/bash

if [[ -d "$HOME/Library/Workflows/Applications/Folder Actions" ]]
  then
    for source in "$HOME/.script/Folder Actions/"*; do
      target="$HOME/Library/Workflows/Applications/Folder Actions/$(basename "$source")"
      ln -sFhv "$source" "$target"
    done
fi

