#!/bin/bash

# Install diff-highlight on Ubuntu/Debian
if [[ -f /usr/share/doc/git/contrib/diff-highlight/diff-highlight ]]
  then
    cp -uv /usr/share/doc/git/contrib/diff-highlight/diff-highlight "$HOME/bin"
    chmod u+x "$HOME/bin/diff-highlight"
fi

# Install diff-highlight on OS X
if [[ -f /usr/local/Library/LinkedKegs/git/share/git-core/contrib/diff-highlight/diff-highlight ]]
  then
    ln -sf /usr/local/Library/LinkedKegs/git/share/git-core/contrib/diff-highlight/diff-highlight "$HOME/bin/diff-highlight"
fi
