#!/bin/bash

if [[ -d "$HOME/Library/Services" ]]
  then
    for source in "$HOME/.script/Services/"*; do
      target="$HOME/Library/Services/$(basename "$source")"
      ln -sFv "$source" "$target"
    done
fi

